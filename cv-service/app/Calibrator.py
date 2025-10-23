# Системные импорты
import os, sys, json, threading, time
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
import numpy as np
import cv2

# Внутренние модули
from common.Config import Config
from common.Logger import config_logger
from common.Redis import get_redis_client
from common.Utils import is_docker

from Aruco import Aruco

logger = config_logger("cv-service/Calibrator.py")
redis_client = get_redis_client()

REDIS_CAMERA_FRAME_KEY = os.getenv("REDIS_CAMERA_FRAME_KEY", "camera_frame")
REDIS_PROCESSED_FRAME_KEY = os.getenv(
    "REDIS_PROCESSED_FRAME_KEY", "processed_frame")

if is_docker():
   MAT_DIR = "/data"
else:
   MAT_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "data")


class Calibrator:

    def __init__(self):
        logger.debug("Инициализация калибратора")
        self.Calibrated = False
        realDX = Config.get("Markers.MarkersXDistance")*10
        realDY = Config.get("Markers.MarkersYDistance")*10
        self.Size = np.array([realDX, realDY])
        self.__load_calibration_data()

    def __load_calibration_data(self):
        self.M = np.load(os.path.join(MAT_DIR, "calibration_matrix.npy")) if os.path.exists(os.path.join(MAT_DIR, "calibration_matrix.npy")) else None
        if self.M is not None:
            self.Calibrated = True

    def __save_calibration_data(self):
        if self.M is not None:
            np.save(os.path.join(MAT_DIR, "calibration_matrix.npy"), self.M)
            logger.info(f"Матрица калибровки сохранена в {os.path.join(MAT_DIR, 'calibration_matrix.npy')}")

    def uncalibrate(self):
        self.Calibrated = False
        self.M = None
        if os.path.exists(os.path.join(MAT_DIR, "calibration_matrix.npy")):
            os.remove(os.path.join(MAT_DIR, "calibration_matrix.npy"))
            logger.info(f"Файл матрицы калибровки удален из {os.path.join(MAT_DIR, 'calibration_matrix.npy')}")


    def calibrate(self, markers):

        if markers and len(markers) < 4:
            logger.warning(
                "Недостаточно маркеров ArUco для калибровки (требуется минимум 4)"
            )
            return False

        try:
            # Получение ID и координат маркеров из конфигурации
            marker00_id = Config.get("Markers.Marker00ID")
            marker00_point = Config.get("Markers.Marker00Point")
            markerx0_id = Config.get("Markers.MarkerX0ID")
            markerx0_point = Config.get("Markers.MarkerX0Point")
            markerxy_id = Config.get("Markers.MarkerXYID")
            markerxy_point = Config.get("Markers.MarkerXYPoint")
            marker0y_id = Config.get("Markers.Marker0YID")
            marker0y_point = Config.get("Markers.Marker0YPoint")
            # Реальные расстояния между маркерами
            realDX = Config.get("Markers.MarkersXDistance")*10
            realDY = Config.get("Markers.MarkersYDistance")*10
            self.Size = np.array([realDX, realDY])
            # Извлечение координат углов маркеров
            src_pts = np.float32([
                markers[marker00_id].corners[marker00_point],
                markers[markerx0_id].corners[markerx0_point],
                markers[markerxy_id].corners[markerxy_point],
                markers[marker0y_id].corners[marker0y_point],
            ])

            # Целевые координаты — идеальный прямоугольник
            dst_pts = np.float32([
                [0, 0],
                [realDX, 0],
                [realDX, realDY],
                [0, realDY],
            ])
            # Вычисление перспективной матрицы
            self.M = cv2.getPerspectiveTransform(src_pts, dst_pts)
            # self.M = cv2.findHomography(src_pts, dst_pts, method=cv2.RANSAC)[0]
            self.Size = np.array([realDX, realDY])
            self.Calibrated = True
            self.__save_calibration_data()

            return True

        except Exception as e:
            logger.error(f"Ошибка при калибровке: {e}")
            return False


if __name__ == "__main__":
    from Aruco import Aruco

    aruco = Aruco()
    cv2.namedWindow("Frame", cv2.WINDOW_FREERATIO)
    calibrator = Calibrator()

    while True:

        frame_data = redis_client.get(REDIS_CAMERA_FRAME_KEY)
        if frame_data:
            np_arr = np.frombuffer(frame_data, np.uint8)
            img = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)

        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        markers = aruco.detectMarkers(gray)

        if markers and len(markers) > 0:
            logger.debug(f"Обнаружено {len(markers)} маркерa(ов) ArUco")
            for id, marker in markers.items():
                cv2.drawMarker(img, marker.center, (255, 0, 0),
                               cv2.MARKER_CROSS, 5, 8)
                cv2.putText(
                    img,
                    f"ID: {id}",
                    (marker.center[0] + 10, marker.center[1]),
                    cv2.FONT_HERSHEY_SIMPLEX,
                    0.5,
                    (255, 0, 0),
                    2,
                )
                cv2.polylines(
                    img,
                    [
                        np.array(
                            [
                                marker.topLeft,
                                marker.topRight,
                                marker.bottomRight,
                                marker.bottomLeft,
                            ],
                            dtype=np.int32,
                        )
                    ],
                    isClosed=True,
                    color=(0, 255, 0),
                    thickness=2,
                )

        if not calibrator.Calibrated:
            cv2.putText(
                img,
                "Not Calibrated",
                (10, 30),
                cv2.FONT_HERSHEY_SIMPLEX,
                1,
                (0, 0, 255),
                20,
            )
        else:
            cv2.putText(
                img,
                f"Calibrated: Theta={np.degrees(calibrator.Theta):.2f}, Origin=({int(calibrator.Origin[0])},{int(calibrator.Origin[1])}), Size=({int(calibrator.Size[0])},{int(calibrator.Size[1])})",
                (10, 30),
                cv2.FONT_HERSHEY_SIMPLEX,
                0.7,
                (0, 255, 0),
                20,
            )

        cv2.imshow("Frame", img)
        key = cv2.waitKey(1) & 0xFF

        if key == ord("c"):
            logger.info("Запуск калибровки...")
            if calibrator.calibrate(markers):
                logger.info("Калибровка успешно завершена.")
