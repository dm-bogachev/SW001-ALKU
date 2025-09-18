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

from Aruco import Aruco

logger = config_logger("cv-service/Calibrator.py")
redis_client = get_redis_client()

REDIS_CAMERA_FRAME_KEY = os.getenv("REDIS_CAMERA_FRAME_KEY", "camera_frame")
REDIS_PROCESSED_FRAME_KEY = os.getenv(
    "REDIS_PROCESSED_FRAME_KEY", "processed_frame")


class Calibrator:

    def __init__(self):
        logger.debug("Инициализация калибратора")
        self.__load_calibration_data()

    def __load_calibration_data(self):
        self.Calibrated = Config.get("CalibrationData.Calibrated", "null")
        self.Calibrated = json.loads(Config.get(
            "CalibrationData.Calibrated", "null"))
        theta = Config.get("CalibrationData.Theta", "null")
        self.Theta = np.array(json.loads(theta)) if theta != "null" else None
        origin = Config.get("CalibrationData.Origin", "null")
        self.Origin = np.array(json.loads(
            origin)) if origin != "null" else None
        size = Config.get("CalibrationData.Size", "null")
        self.Size = np.array(json.loads(size)) if size != "null" else None
        rst = Config.get("CalibrationData.RST", "null")
        self.RST = np.array(json.loads(rst)) if rst != "null" else None
        self.ScaleX = Config.get("CalibrationData.ScaleX", "null")
        self.ScaleY = Config.get("CalibrationData.ScaleY", "null")

    def __save_calibration_data(self):
        Config.set(
            "CalibrationData.Calibrated",
            json.dumps(
                self.Calibrated if self.Calibrated is not None else None),
        )
        Config.set(
            "CalibrationData.Theta",
            json.dumps(self.Theta.tolist()
                       if self.Theta is not None else None),
        )
        Config.set(
            "CalibrationData.Origin",
            json.dumps(self.Origin.tolist()
                       if self.Origin is not None else None),
        )
        Config.set(
            "CalibrationData.Size",
            json.dumps(self.Size.tolist() if self.Size is not None else None),
        )
        Config.set(
            "CalibrationData.RST",
            json.dumps(self.RST.tolist() if self.RST is not None else None),
        )
        Config.set("CalibrationData.ScaleX", float(self.ScaleX) if self.ScaleX is not None else None)
        Config.set("CalibrationData.ScaleY", float(self.ScaleY) if self.ScaleY is not None else None)
        Config.save()

    def uncalibrate(self):
        self.Calibrated = False
        self.Theta = None
        self.Origin = None
        self.Size = None
        self.RST = None
        self.ScaleX = None
        self.ScaleY = None
        self.__save_calibration_data()

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
            realDX = Config.get("Markers.MarkersXDistance")
            realDY = Config.get("Markers.MarkersYDistance")

            pp = np.float32(
                [
                    markers[marker00_id].corners[marker00_point],
                    markers[markerx0_id].corners[markerx0_point],
                    markers[markerxy_id].corners[markerxy_point],
                    markers[marker0y_id].corners[marker0y_point],
                ]
            )

            self.Size = np.array(
                [
                    np.ceil(np.linalg.norm(pp[1] - pp[0])),
                    np.ceil(np.linalg.norm(pp[3] - pp[0])),
                ]
            )

            # Начальная точка (координаты первого маркера)
            T = np.array(pp[0])
            self.Origin = T

            # Вычисление матрицы поворота
            self.Theta = np.arctan2(pp[1][1] - pp[0][1], pp[1][0] - pp[0][0])
            R = np.array(
                [
                    [np.cos(self.Theta), -np.sin(self.Theta)],
                    [np.sin(self.Theta), np.cos(self.Theta)],
                ]
            )

            # Матрица поворота и трансляции
            RT = np.eye(3)
            RT[:2, :2] = R.T
            RT[:2, 2] = -R.T @ T

            # Вычисление масштабных коэффициентов
            scale_x = realDX / np.linalg.norm(pp[1] - pp[0])
            scale_y = realDY / np.linalg.norm(pp[3] - pp[0])

            # Матрица масштаба
            S = np.eye(3)
            S[0, 0] = scale_x
            S[1, 1] = scale_y
            self.ScaleX = scale_x
            self.ScaleY = scale_y

            # Обратная матрица преобразования
            RST = S @ RT
            # np.save(os.path.join(MAT_DIR, "calibration_matrix.npy"), RST)
            logger.info(
                f"Калибровка завершена. Матрица преобразования сохранена")

            self.RST = RST
            self.Calibrated = True
            self.__save_calibration_data()

            logger.info(
                f"\n📐 Результаты калибровки:\n"
                f"   ✅ Статус: {'Калибровано' if self.Calibrated else 'Не калибровано'}\n"
                f"   🔄 Угол поворота (Theta): {np.degrees(self.Theta):.2f}°\n"
                f"   🎯 Начальная точка (Origin): ({self.Origin[0]:.2f}, {self.Origin[1]:.2f})\n"
                f"   📏 Размеры (Size): ширина={self.Size[0]:.2f}, высота={self.Size[1]:.2f}\n"
                f"   🧮 Матрица преобразования (RST):\n{np.array2string(self.RST, precision=4, suppress_small=True)}"
                f"   📊 Масштабы (ScaleX, ScaleY): {self.ScaleX:.2f}, {self.ScaleY:.2f}\n"
            )

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
