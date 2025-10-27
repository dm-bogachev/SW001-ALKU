# Системные импорты
import os, sys, json, threading, time, math

from sympy.geometry.entity import scale
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
import numpy as np
import cv2
import torch

# Внутренние модули
from common.Config import Config
from common.Logger import config_logger
from common.Redis import get_redis_client
from common.Utils import is_docker
from common.Colors import *

from Aruco import Aruco
from Calibrator import Calibrator
from Detector import Detector
from Drawer import Drawer
from ProcessFunction import ProcessFunction


logger = config_logger("cv-service/FrameProcessor.py")
redis_client = get_redis_client()

REDIS_CAMERA_FRAME_KEY = os.getenv("REDIS_CAMERA_FRAME_KEY", "camera_frame")
REDIS_PROCESSED_FRAME_KEY = os.getenv("REDIS_PROCESSED_FRAME_KEY", "processed_frame")

if is_docker():
   DATA_DIR = "/data"
else:
   DATA_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "data")


class FrameProcessor:

    def __init__(self):
        logger.debug("Инициализация обработчика кадров")
        self.__cuda_available = torch.cuda.is_available()
        if self.__cuda_available:
            logger.debug("Для подготовки изображения доступна CUDA")
        else:
            logger.debug("CUDA недоступна")
        self.__aruco = Aruco()
        self.calibrator = Calibrator()
        self.detector = Detector()
        self.drawer = Drawer()
        self.__load_coefficients()
        model = self.detector.get_current_yolo_model()
        self.function = ProcessFunction()
        self.function.load_function(model)

        self.__models = self.detector.get_models_list()

        self.process_started = False
        self.__objects = None

        self.__process_thread = threading.Thread(target=self.__process_loop).start()

        
    def __load_coefficients(self):
        """Загружает матрицу камеры и коэффициенты настроечного оптического дефекта."""
        try:
            data = np.load(os.path.join(DATA_DIR, Config.get("CameraDistortionCoeffsName")))
            self.__cameraMatrix = data["cameraMatrix"]
            self.__distCoeffs = data["distCoeffs"]
            logger.debug(f"Матрица камеры:\n{self.__cameraMatrix}")
            logger.debug(f"Коэффициенты дисторсии:\n{self.__distCoeffs.ravel()}")
        except Exception as e:
            logger.error(f"Ошибка загрузки коэффициентов дисторсии: {e}")
            self.__cameraMatrix = None
            self.__distCoeffs = None

    # def __undistort(self, frame):
    #     distorted = frame.copy()
    #     if self.__cameraMatrix is not None and self.__distCoeffs is not None:
            
    #         if not self.__cuda_available:
    #             Use remap for CUDA-based undistortion
    #             h, w = distorted.shape[:2]
    #             map1, map2 = cv2.initUndistortRectifyMap(
    #                 self.__cameraMatrix, self.__distCoeffs, None, 
    #                 self.__cameraMatrix, (w, h), cv2.CV_32FC1
    #             )
    #             gpu_frame = cv2.cuda_GpuMat()
    #             gpu_map1 = cv2.cuda_GpuMat()
    #             gpu_map2 = cv2.cuda_GpuMat()
                
    #             gpu_frame.upload(distorted)
    #             gpu_map1.upload(map1)
    #             gpu_map2.upload(map2)
                
    #             gpu_undistorted = cv2.cuda.remap(
    #                 gpu_frame, gpu_map1, gpu_map2, 
    #                 interpolation=cv2.INTER_LINEAR
    #             )
    #             undistorted = gpu_undistorted.download()
    #             logger.debug("Устранение дисторсии выполнено")
    #             return undistorted
    #         else:
    #             undistorted = cv2.undistort(distorted, self.__cameraMatrix, self.__distCoeffs)
    #             logger.debug("Устранение дисторсии выполнено")
    #             return undistorted
    #     logger.debug("Устранение дисторсии не выполнено")
    #     return distorted

    def __get_frame_from_redis(self):
        ''' Получает кадр из Redis '''
        frame_data = redis_client.get(REDIS_CAMERA_FRAME_KEY)
        if frame_data:
            np_arr = np.frombuffer(frame_data, np.uint8)
            img = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
            return img
        return None
    
    def __put_frame_to_redis(self, frame):
        ''' Помещает обработанный кадр обратно в Redis '''

        _, buffer = cv2.imencode('.jpg', frame)
        redis_client.set(REDIS_PROCESSED_FRAME_KEY, buffer.tobytes())

    def __process_uncalibrated(self, frame):
        ''' Обрабатывает некалиброванный кадр '''

        markers = self.__find_markers(frame)
        if markers and len(markers) > 0:
            logger.debug(f"Обнаружено {len(markers)} маркерa(ов) ArUco")
            self.__draw_markers(frame, markers)
        self.__objects = None
        # self.__find_circles(frame)
        self.__put_frame_to_redis(frame)

    def __process_calibrated(self, frame):
        ''' Обрабатывает откалиброванный кадр '''
        try:
            frame = self.__prepare_frame(frame)
            
            predictions = self.detector.detect(frame)
            if predictions and len(predictions) > 0:
                frame, predictions = self.function.process(frame, predictions)
            if predictions and len(predictions) > 0:
                # logger.debug(f"0 элемент до масштабирования: {predictions[0].pick_point}")
                frame = self.drawer.draw(frame, predictions)
                self.__objects = predictions

            for x in range(0, frame.shape[1], 500):
                for x in range(0, frame.shape[1], 500):
                    cv2.line(frame, (x, 0), (x, frame.shape[0]), (0, 255, 0), 3)
                for y in range(0, frame.shape[0], 500):
                    cv2.line(frame, (0, y), (frame.shape[1], y), (0, 255, 0), 3)
                for x in range(0, frame.shape[1], 100):
                    cv2.line(frame, (x, 0), (x, frame.shape[0]), (0, 255, 0), 1)
                for y in range(0, frame.shape[0], 100):
                    cv2.line(frame, (0, y), (frame.shape[1], y), (0, 255, 0), 1)

            # frame = cv2.drawMarker(frame, (1000, 1000), (0,0,255), cv2.MARKER_CROSS, 5, 8)
            # frame = cv2.drawMarker(frame, (2500, 1500), (0,0,255), cv2.MARKER_CROSS, 5, 8)
            # frame = cv2.drawMarker(frame, (3000, 2500), (0,0,255), cv2.MARKER_CROSS, 5, 8)
            # frame = cv2.drawMarker(frame, (4500, 1500), (0,0,255), cv2.MARKER_CROSS, 5, 8)


            self.__put_frame_to_redis(frame)
        except Exception as e:
            logger.error(f"Ошибка при обработке кадра: {e}")

    def __prepare_frame(self, frame):
        ''' Подготавливает кадр для обработки с учётом перспективной калибровки и CUDA '''

        if not self.calibrator.Calibrated:
            logger.warning("Калибровка не выполнена — кадр не обработан")
            return frame

        try:
            self.center = (frame.shape[1] // 2, frame.shape[0] // 2)
            # Размер целевого прямоугольника
            width, height = map(int, self.calibrator.Size)
            target_size = (width, height)

            # Преобразование с CUDA, если доступно
            if self.__cuda_available:
                try:
                    gpu_frame = cv2.cuda_GpuMat()
                    gpu_frame.upload(frame)

                    gpu_warped = cv2.cuda.warpPerspective(gpu_frame, self.calibrator.M, target_size)
                    result = gpu_warped.download()
                except Exception as e:
                    logger.error(f"Ошибка CUDA-преобразования: {e}")
                    result = cv2.warpPerspective(frame, self.calibrator.M, target_size)
            else:
                logger.debug("CUDA недоступна, выполняется преобразование без CUDA")
                result = cv2.warpPerspective(frame, self.calibrator.M, target_size)

            return result

        except Exception as e:
            logger.error(f"Ошибка при подготовке кадра: {e}")
            return frame


    def __process_loop(self):
        ''' Запускает цикл обработки кадров '''

        logger.debug("Запуск цикла обработки кадров")
        self.process_started = True
        while True:
            frame = self.__get_frame_from_redis()
            if frame is None:
                logger.warning(
                    "Не удалось получить кадр из Redis, повторная попытка через 5 секунд"
                )
                time.sleep(5)
                continue
            logger.debug("Кадр успешно получен из Redis, начинаем обработку")
            
            if not self.calibrator.Calibrated:
                self.__process_uncalibrated(frame)
            else:
                self.__process_calibrated(frame)

            time.sleep(Config.get("Process.ProcessingDelay", 1))

    def __find_markers(self, frame):
        ''' Находит маркеры ArUco на кадре '''
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        markers = self.__aruco.detectMarkers(gray)
        return markers

    def __draw_markers(self, frame, markers):
        ''' Рисует обнаруженные маркеры на кадре '''
        for id, marker in markers.items():
            cv2.drawMarker(frame, marker.center, (255,0,0), cv2.MARKER_CROSS, 5, 8)
            cv2.putText(frame, f"ID: {id}", (marker.center[0] + 10, marker.center[1]), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255,0,0), 2)
            cv2.polylines(frame, [np.array([marker.topLeft, marker.topRight, marker.bottomRight, marker.bottomLeft], dtype=np.int32)], isClosed=True, color=(0, 255, 0), thickness=2)

    def calibrate(self):
        ''' Выполняет калибровку на текущем кадре '''
        frame = self.__get_frame_from_redis()
        if frame is None:
            logger.warning("Не удалось получить кадр из Redis для калибровки")
            return False
        markers = self.__find_markers(frame)
        success = self.calibrator.calibrate(markers)
        if success:
            logger.info("Калибровка успешно выполнена")
        else:
            logger.error("Калибровка не удалась")
        return success

    def set_processing_delay(self, delay):
        ''' Устанавливает задержку между обработкой кадров '''
        Config.set("Process.ProcessingDelay", delay)
        Config.save()
        logger.info(f"Задержка между обработкой кадров установлена на {delay} с")

    def add_model(self, model_name, model_file_name, confidence_threshold, model_type, processor_file):
        ''' Добавляет новую модель в конфигурацию '''
        model_info = {
            "ModelName": model_name,
            "ModelFileName": model_file_name,
            "ConfidenceThreshold": confidence_threshold,
            "ModelType": model_type,
            "ModelProcessor": processor_file
        }
        Config.set(f"Models.{model_name}", model_info)
        Config.save()
        self.detector.add_model(model_name, model_file_name, confidence_threshold, model_type, processor_file)

        logger.info(f"Модель {model_info['ModelName']} добавлена в конфигурацию")

    def change_model(self, model_name):
        ''' Смена модели детектора '''
        if self.detector.change_model(model_name):
            logger.info(f"Модель изменена на {model_name}")
            self.function.load_function(self.detector.get_current_yolo_model())
            return True
        else:
            logger.error(f"Не удалось изменить модель на {model_name}")
            return False

    def get_objects(self):
        ''' Получение объектов '''
        return self.__objects

    def get_first_object(self):
        ''' Получение первого объекта '''
        if self.__objects:
            return self.__objects[0]
        return None

    def transform_point(self, point, M):
        # Преобразуем точку в однородные координаты
        point_homogeneous = np.array([point[0], point[1], 1])
        
        # Умножаем на матрицу преобразования
        transformed = np.dot(M, point_homogeneous)
        
        # Нормализуем координаты
        x = int(transformed[0] / transformed[2])
        y = int(transformed[1] / transformed[2])
        
        return (x, y)

if __name__ == "__main__":
    processor = FrameProcessor()
    cv2.namedWindow("Processed Frame", cv2.WINDOW_FREERATIO)
    while True:

        key = cv2.waitKey(1)
        if key == ord('q'):
            break
        if key == ord('c'):
            processor.calibrate()
        if key == ord('r'):
            processor.calibrator.uncalibrate()