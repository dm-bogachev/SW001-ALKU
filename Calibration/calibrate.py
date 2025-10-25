import cv2
import numpy as np
import os
import glob

# Check OpenCV version
print(f"OpenCV version: {cv2.__version__}")
from HikCamera import HikCamera
HikCamera = HikCamera()
HikCamera.open()
HikCamera.set_exposure(5000)
def check_corner_distribution(corners_list, image_size, grid_size=(3, 3)):
    """
    Проверяет равномерность распределения углов по изображению.
    Делит изображение на grid_size[0]xgrid_size[1] областей и проверяет,
    что в каждой области есть хотя бы один угол.
    
    Аргументы:
    corners_list: список массивов с координатами углов (N,2) или (N,1,2)
    image_size: кортеж (ширина, высота) изображения
    grid_size: кортеж (строки, колонки) для разбиения изображения
    
    Возвращает:
    - bool: True если углы распределены равномерно, иначе False
    - numpy.ndarray: Маска с областями (1 - есть углы, 0 - нет углов)
    """
    if not corners_list:
        return False, None
    
    try:
        # Преобразуем image_size в кортеж целых чисел
        if hasattr(image_size, '__iter__') and len(image_size) >= 2:
            w, h = int(image_size[0]), int(image_size[1])
        else:
            w, h = 1920, 1080  # Значения по умолчанию, если не удалось определить
            
        grid_rows, grid_cols = grid_size
        grid_h = max(1, h // grid_rows)
        grid_w = max(1, w // grid_cols)
        
        # Создаем маску для сетки
        grid_mask = np.zeros((grid_rows, grid_cols), dtype=np.uint8)
        
        for corners in corners_list:
            if corners is None or len(corners) == 0:
                continue
                
            # Преобразуем углы в правильный формат (N,2)
            corners_np = np.array(corners, dtype=np.float32)
            if corners_np.ndim == 3 and corners_np.shape[1:] == (1, 2):
                corners_np = corners_np.reshape(-1, 2)
            elif corners_np.ndim != 2 or corners_np.shape[1] != 2:
                print(f"⚠️ Неподдерживаемый формат углов: {corners_np.shape}")
                continue
            
            # Обрабатываем каждый угол
            for x, y in corners_np:
                if np.isnan(x) or np.isnan(y):
                    continue
                    
                # Определяем индексы ячейки сетки
                i = min(int(y // grid_h), grid_rows - 1)
                j = min(int(x // grid_w), grid_cols - 1)
                grid_mask[i, j] = 1
        
        # Вычисляем процент заполненных ячеек
        total_cells = grid_rows * grid_cols
        coverage = np.sum(grid_mask) / total_cells
        
        # Считаем распределение равномерным, если заполнено не менее 80% ячеек
        is_uniform = coverage >= 0.6  # Снизили порог до 60% для большей гибкости
        
        # Дополнительная отладочная информация
        print(f"🔹 Проверка распределения углов:")
        print(f"   Изображение: {w}x{h}, Сетка: {grid_rows}x{grid_cols}")
        print(f"   Заполнено ячеек: {int(coverage*100)}% ({np.sum(grid_mask)} из {total_cells})")
        
        return is_uniform, grid_mask
        
    except Exception as e:
        print(f"⚠️ Ошибка при проверке распределения углов: {str(e)}")
        print(f"   image_size: {image_size}")
        print(f"   grid_size: {grid_size}")
        if 'corners_list' in locals() and corners_list:
            print(f"   Пример corners_list[0].shape: {np.array(corners_list[0]).shape}")
        return False, np.zeros(grid_size, dtype=np.uint8)

def calibrate_camera_chessboard(all_corners, board_size, square_size, image_size):
    """
    Calibrate camera using chessboard pattern
    
    Args:
        all_corners: List of detected corners from chessboard images
        board_size: Tuple of (width, height) - number of inner corners
        square_size: Size of one square in meters
        image_size: Size of the image (width, height)
        
    Returns:
        ret: Reprojection error
        cameraMatrix: Camera matrix
        distCoeffs: Distortion coefficients
        rvecs: Rotation vectors
        tvecs: Translation vectors
    """
    # Prepare object points (0,0,0), (1,0,0), (2,0,0) ..., (board_size[0]-1, board_size[1]-1, 0)
    objp = np.zeros((board_size[0] * board_size[1], 3), np.float32)
    objp[:, :2] = np.mgrid[0:board_size[0], 0:board_size[1]].T.reshape(-1, 2) * square_size
    
    # Arrays to store object points and image points from all images
    obj_points = []  # 3D points in real world space
    img_points = []  # 2D points in image plane
    
    print(f"🔹 Шахматная доска: {board_size[0]}x{board_size[1]} углов")
    print(f"🔹 Размер квадрата: {square_size} м")
    print(f"🔹 Размер изображения: {image_size[0]}x{image_size[1]}")
    
    # Prepare object and image points for calibration
    valid_images = 0
    for i, corners in enumerate(all_corners):
        if corners is None or len(corners) == 0:
            print(f"⚠️ Пропущено изображение {i}: углы не найдены")
            continue
            
        try:
            # Convert corners to proper format (N,1,2)
            corners = np.array(corners, dtype=np.float32)
            if corners.shape[1] == 2:  # If shape is (N,2)
                corners = corners.reshape(-1, 1, 2)
            
            # Check if we have the right number of corners
            if len(corners) != board_size[0] * board_size[1]:
                print(f"⚠️ Пропущено изображение {i}: неверное количество углов "
                      f"(ожидалось {board_size[0] * board_size[1]}, получено {len(corners)})")
                continue
                
            obj_points.append(objp)
            img_points.append(corners)
            valid_images += 1
            
        except Exception as e:
            print(f"⚠️ Ошибка при обработке изображения {i}: {str(e)}")
            if 'corners' in locals():
                print(f"    Формат углов: {corners.shape}")
            continue
    
    if valid_images < 5:
        raise ValueError(f"Недостаточно изображений для калибровки. Требуется минимум 5, получено {valid_images}")
    
    print(f"✅ Успешно обработано {valid_images} изображений для калибровки")
    
    # Check corner distribution
    try:
        is_uniform, grid_mask = check_corner_distribution(
            [c.reshape(-1, 2) for c in all_corners if c is not None and len(c) > 0],
            image_size,
            grid_size=(3, 3)
        )
        
        if not is_uniform:
            print("⚠️ Внимание: углы распределены неравномерно по изображению!")
            print("   Рекомендуется сделать дополнительные снимки с разными положениями калибровочной доски.")
            print("   Заполненность областей (⬜ - есть углы, ⬛ - нет углов):")
            for i in range(grid_mask.shape[0]):
                row = ""
                for j in range(grid_mask.shape[1]):
                    row += "⬜" if grid_mask[i, j] else "⬛"
                print(f"   {row}")
        else:
            print("✅ Углы распределены равномерно по изображению")
    except Exception as e:
        print(f"⚠️ Не удалось проверить равномерность распределения углов: {str(e)}")
    
    # Calibrate camera
    print("\n🔧 Выполняется калибровка камеры...")
    ret, cameraMatrix, distCoeffs, rvecs, tvecs = cv2.calibrateCamera(
        objectPoints=obj_points,
        imagePoints=img_points,
        imageSize=tuple(image_size),
        cameraMatrix=None,
        distCoeffs=None,
        flags=cv2.CALIB_FIX_K3 | cv2.CALIB_ZERO_TANGENT_DIST | cv2.CALIB_FIX_PRINCIPAL_POINT
    )
    
    # Calculate reprojection error
    mean_error = 0.0
    for i in range(len(obj_points)):
        imgpoints2, _ = cv2.projectPoints(
            obj_points[i], rvecs[i], tvecs[i], cameraMatrix, distCoeffs)
        error = cv2.norm(img_points[i], imgpoints2, cv2.NORM_L2) / len(imgpoints2)
        mean_error += error
    
    mean_error /= len(obj_points)
    print(f"📊 Средняя ошибка репроекции: {mean_error:.4f} пикселей")
    
    return ret, cameraMatrix, distCoeffs, rvecs, tvecs

# Параметры шахматной доски
BOARD_SIZE = (9, 6)  # Количество внутренних углов (ширина x высота)
SQUARE_SIZE = 0.027  # Размер квадрата в метрах

# Критерии для поиска углов
criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

# Проверка наличия сохранённой калибровки
calib_file = "Calibration/calibration_chess.npz"
if os.path.exists(calib_file):
    print("📂 Загрузка сохранённых параметров калибровки...")
    data = np.load(calib_file)
    cameraMatrix = data["cameraMatrix"]
    distCoeffs = data["distCoeffs"]
    print(f"📸 Матрица камеры:\n{cameraMatrix}")
    print(f"🎯 Коэффициенты дисторсии:\n{distCoeffs.ravel()}")
else:
    # Загрузка изображений
    image_paths = sorted(glob.glob("Calibration/data/chess_*.png"))
    print(f"🔍 Найдено {len(image_paths)} изображений для калибровки")

    all_corners = []
    image_size = None

    for path in image_paths:
        img = cv2.imread(path)
        if img is None:
            print(f"❌ Не удалось загрузить изображение: {path}")
            continue
            
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        
        # Поиск углов шахматной доски
        ret, corners = cv2.findChessboardCorners(gray, BOARD_SIZE, None)
        
        if ret:
            # Уточнение позиций углов с субпиксельной точностью
            corners2 = cv2.cornerSubPix(gray, corners, (11, 11), (-1, -1), criteria)
            all_corners.append(corners2)
            image_size = gray.shape[::-1]
            print(f"✅ {os.path.basename(path)} — углов: {len(corners2)}")
        else:
            print(f"❌ {os.path.basename(path)} — углы шахматной доски не найдены")

    # Калибровка
    print("\n📐 Запуск калибровки...")
    print(f"📊 Всего изображений с углами: {len(all_corners)}")
    
    if not all_corners:
        print("❌ Ошибка: не найдено ни одного изображения с распознанной шахматной доской")
        print("Проверьте, что:")
        print("1. Изображения содержат шахматную доску правильного размера")
        print(f"2. Количество внутренних углов: {BOARD_SIZE[0]}x{BOARD_SIZE[1]}")
        print("3. Доска хорошо освещена и видна целиком")
        exit(1)
    
    try:
        ret, cameraMatrix, distCoeffs, rvecs, tvecs = calibrate_camera_chessboard(
            all_corners=all_corners,
            board_size=BOARD_SIZE,
            square_size=SQUARE_SIZE,
            image_size=image_size
        )
    except Exception as e:
        print(f"❌ Ошибка при калибровке: {str(e)}")
        print("Проверьте, что у вас достаточно изображений с правильно распознанной шахматной доской.")
        exit(1)

    print("\n📊 Результаты калибровки:")
    print(f"🔧 Средняя ошибка репроекции: {ret:.4f} пикселя")
    print(f"📸 Матрица камеры:\n{cameraMatrix}")
    print(f"🎯 Коэффициенты дисторсии:\n{distCoeffs.ravel()}")

    cv2.namedWindow("Undistorted", cv2.WINDOW_NORMAL)
    cv2.waitKey(0)
    # Сохранение параметров
    np.savez(calib_file, cameraMatrix=cameraMatrix, distCoeffs=distCoeffs)
    print(f"💾 Параметры сохранены в '{calib_file}'")

# Запуск видео с коррекцией и визуализацией осей
print("\n🎥 Запуск видеопотока с коррекцией и визуализацией...")
cv2.namedWindow("Undistorted", cv2.WINDOW_NORMAL)
cv2.waitKey(0)
while True:
    frame = HikCamera.get_frame()
    frame = cv2.cvtColor(frame, cv2.COLOR_GRAY2BGR)
    if frame is None:
        break

    undistorted = cv2.undistort(frame, cameraMatrix, distCoeffs)
    gray = cv2.cvtColor(undistorted, cv2.COLOR_BGR2GRAY)
    

    # Отображение с сохранением пропорций
    h, w = undistorted.shape[:2]
    screen_w, screen_h = 1280, 720
    scale = min(screen_w / w, screen_h / h)
    resized = cv2.resize(undistorted, (int(w * scale), int(h * scale)))

    cv2.imshow("Undistorted", resized)
    key = cv2.waitKey(1)
    if key == 27:  # ESC
        break
    if key == ord('s'):
        filename = os.path.join("Calibration", f"undistorted.png")
        cv2.imwrite(filename, undistorted)
        print(f"✅ Сохранено: {filename}")

HikCamera.close()
cv2.destroyAllWindows()