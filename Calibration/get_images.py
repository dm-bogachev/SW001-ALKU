import cv2
import numpy as np
import os

# Параметры шахматной доски (внутренние углы)
CHESSBOARD_SIZE = (9, 6)  # Количество внутренних углов (ширина x высота)
SQUARE_SIZE = 0.027  # Размер квадрата в метрах (можно изменить под ваш случай)

# Критерии для поиска углов
criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

# Подготовка векторов для хранения 3D точек и 2D точек для всех изображений
obj_points = []  # 3D точки в реальном пространстве
img_points = []  # 2D точки в плоскости изображения

# Камера
from HikCamera import HikCamera
HikCamera = HikCamera()
HikCamera.open()
HikCamera.set_exposure(5000)
cv2.namedWindow("Chessboard Detection", cv2.WINDOW_NORMAL)

save_dir = "Calibration/data"   
os.makedirs(save_dir, exist_ok=True)

# Find the highest existing image number
existing_files = [f for f in os.listdir(save_dir) if f.startswith('chess_') and f.endswith('.png')]
if existing_files:
    frame_id = max([int(f.split('_')[1].split('.')[0]) for f in existing_files]) + 1
else:
    frame_id = 0

while True:
    frame = HikCamera.get_frame()
    if frame is None:
        continue
    gray = frame.copy()
    frame = cv2.cvtColor(gray, cv2.COLOR_GRAY2BGR)
    
    # Поиск углов шахматной доски
    ret, corners = cv2.findChessboardCorners(gray, CHESSBOARD_SIZE, None)
    
    if ret:
        # Уточнение позиций углов с субпиксельной точностью
        corners2 = cv2.cornerSubPix(gray, corners, (11, 11), (-1, -1), criteria)
        
        # Отрисовка углов
        cv2.drawChessboardCorners(frame, CHESSBOARD_SIZE, corners2, ret)
        
        # Отображение количества найденных углов
        num_corners = corners2.shape[0]
        expected_corners = CHESSBOARD_SIZE[0] * CHESSBOARD_SIZE[1]
        status = "✅ Годится для калибровки" if num_corners == expected_corners else "⚠️ Не все углы найдены"
        
        font_scale = 2.0
        thickness = 3
        cv2.putText(frame, f"Углов: {num_corners}/{expected_corners} — {status}", (40, 80),
                   cv2.FONT_HERSHEY_SIMPLEX, font_scale, 
                   (0, 255, 0) if num_corners == expected_corners else (0, 0, 255), thickness)
    else:
        cv2.putText(frame, "❌ Углы шахматной доски не найдены", (40, 80),
                   cv2.FONT_HERSHEY_SIMPLEX, 1.5, (0, 0, 255), 3)

    # Отображение с сохранением пропорций
    h, w = frame.shape[:2]
    screen_w, screen_h = 1280, 720
    scale = min(screen_w / w, screen_h / h)
    resized = cv2.resize(frame, (int(w * scale), int(h * scale)))
    cv2.imshow("Chessboard Detection", resized)

    key = cv2.waitKey(1)
    if key == ord('1'):
        if ret:  # Если углы найдены
            # Получаем оригинальный кадр без разметки
            clean_frame = HikCamera.get_frame()
            if clean_frame is not None:
                # Генерация 3D точек шахматной доски
                objp = np.zeros((CHESSBOARD_SIZE[0] * CHESSBOARD_SIZE[1], 3), np.float32)
                objp[:, :2] = np.mgrid[0:CHESSBOARD_SIZE[0], 0:CHESSBOARD_SIZE[1]].T.reshape(-1, 2) * SQUARE_SIZE
                
                # Сохранение чистого изображения
                filename = os.path.join(save_dir, f"chess_{frame_id:03d}.png")
                cv2.imwrite(filename, clean_frame)
                
                # Сохранение точек для калибровки
                obj_points.append(objp)
                img_points.append(corners2)
                
                print(f"✅ Сохранено: {filename}")
                frame_id += 1
            else:
                print("⚠️ Не удалось получить кадр с камеры")
        else:
            print("⚠️ Не могу сохранить: углы доски не найдены")
    elif key == 27:  # ESC
        break

HikCamera.close()
cv2.destroyAllWindows()