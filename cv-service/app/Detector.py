# Системные импорты
import os, sys, json, threading, time
import importlib.util
from pathlib import Path
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
import numpy as np
import cv2
import torch
from ultralytics import YOLO

# Внутренние модули
from common.Config import Config
from common.Logger import config_logger
from common.Redis import get_redis_client
from common.Utils import is_docker
from YoloModel import YoloModel
from YoloData import YoloData

logger = config_logger("cv-service/Detector.py")
redis_client = get_redis_client()

if is_docker():
    MODELS_DIR = "/data/models"
    POSTPROCESSORS_DIR = "/data/postprocessors"
else:
    MODELS_DIR = os.path.join(
        os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "data", "models"
    )
    POSTPROCESSORS_DIR = os.path.join(
        os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "data", "postprocessors"
    )

class Detector:
    def __init__(self):
        logger.debug("Инициализация обработчика кадров")
        self.__current_model = Config.get("Process.LastModel", "LongDetails")
        self.__device = "cuda" if torch.cuda.is_available() else "cpu"
        logger.info(f"Используемое устройство: {self.__device}")

        self.__load_models_list()
        self.__yolo, self.__modelfun = self.__load_default_model()
        logger.debug("Обработчик кадров успешно инициализирован")

    def __load_models_list(self):
        """Загрузка списка моделей из конфигурации."""

        self.__models = Config.get("Models").copy()
        if not self.__models:
            logger.error("Не удалось загрузить список моделей из конфигурации")
            raise ValueError("Список моделей не найден в конфигурации")

        for model in self.__models:
            model_config = self.__models[model]
            model_name = model_config.get("ModelName")
            model_file_name = model_config.get("ModelFileName")
            confidence_threshold = model_config.get("ConfidenceThreshold", 0.5)
            model_type = model_config.get("ModelType", "yolo-pose")
            processor_file = model_config.get("ModelProcessor", None)

            if not all([model_name, model_file_name, confidence_threshold, model_type]):
                logger.error(f"Некорректная конфигурация модели: {model}")
                continue

            yolo_model = YoloModel(
                model_name=model_name,
                model_file_name=model_file_name,
                confidence_threshold=confidence_threshold,
                model_type=model_type,
                processor_file=processor_file,
            )
            self.__models[model] = yolo_model

        self.__check_model_files()
        logger.info(
            f"Загружено {len(self.__models)} моделей: {list(self.__models.keys())}"
        )

    def __check_model_files(self):
        """Проверка наличия файлов моделей."""

        models_to_delete = []
        for model in self.__models:
            model_file = os.path.join(MODELS_DIR, self.__models[model].model_file_name)
            if not os.path.isfile(model_file):
                logger.error(
                    f"Файл модели {model_file} не найден, удаляем модель {model}"
                )
                models_to_delete.append(model)
        for model in models_to_delete:
            del self.__models[model]
        logger.debug("Все файлы моделей успешно проверены и найдены")

    def __load_default_model(self):
        """Загрузка модели по умолчанию из конфигурации."""
        model_name = Config.get("Process.LastModel", "LongDetails")
        return self.__load_model(model_name)

    def __load_model(self, model_name):
        """Загрузка модели по имени."""
        if model_name not in self.__models:
            logger.error(f"Модель {model_name} не найдена")
            return None

        model_config = self.__models[model_name]
        model_file = os.path.join(MODELS_DIR, model_config.model_file_name)
        if not os.path.isfile(model_file):
            logger.error(f"Файл модели {model_file} не найден")
            return None

        yolo = YOLO(model_file)
        yolo.to(self.__device)
        logger.info(f"Модель {model_name} успешно загружена")
        self.__current_model = model_name

        modelfun = self.__import_module_from_path(os.path.join(POSTPROCESSORS_DIR, model_config.processor_file))

        return yolo, modelfun

    def __import_module_from_path(self, file_path):
        """Импорт модуля из указанного пути."""
        module_name = Path(file_path).stem
        spec = importlib.util.spec_from_file_location(module_name, file_path)
        module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(module)
        return module

    def __format_predictions(self, predictions):
        ''' Форматирует предсказания '''

        result = []

        model_name = self.__current_model
        for data in predictions:
            conf = data.boxes.conf.cpu().tolist()[0]
            if conf < self.__models[model_name].confidence_threshold:
                continue
            xyxy = data.boxes.xyxy.cpu().tolist()[0]
            class_id = data.boxes.cls.cpu().tolist()[0]
            class_name = data.names[int(class_id)]
            if data.keypoints is not None:
                keypoints = data.keypoints.data.cpu().tolist()[0]
            else:
                keypoints = None

            result.append(YoloData(model_name, xyxy, conf, class_id, class_name, keypoints))

        return result

    def get_models_list(self):
        """Получение списка моделей."""

        if not self.__models:
            logger.error("Список моделей пуст")
            return []

        models_list = []
        for model in self.__models:
            yolo_model = self.__models[model]
            models_list.append(
                {
                    "name": yolo_model.model_name,
                    "file_name": yolo_model.model_file_name,
                    "confidence_threshold": yolo_model.confidence_threshold,
                    "model_type": yolo_model.model_type,
                    "processor_file": yolo_model.processor_file,
                }
            )
        return models_list

    def get_current_yolo_model(self):
        if self.__current_model not in self.__models:
            logger.error("Текущая модель не найдена в списке моделей")
            return None
        return self.__models[self.__current_model]

    def get_current_model(self):
        """Получение текущей модели."""

        if self.__current_model not in self.__models:
            logger.error("Текущая модель не найдена в списке моделей")
            return None

        yolo_model = self.__models[self.__current_model]
        return {
            "name": yolo_model.model_name,
            "file_name": yolo_model.model_file_name,
            "confidence_threshold": yolo_model.confidence_threshold,
            "model_type": yolo_model.model_type,
            "processor_file": yolo_model.processor_file,
        }

    def change_model(self, model_name):
        """Смена модели."""

        if model_name == self.__current_model:
            logger.warning(f"Модель {model_name} уже активна")
            return True
        logger.info(f"Запрос на смену модели на {model_name}")
        if model_name not in self.__models:
            logger.error(f"Модель {model_name} не найдена в списке доступных моделей")
            return False
        new_yolo, new_modelfun = self.__load_model(model_name)
        if new_yolo is None:
            logger.error(f"Не удалось загрузить модель {model_name}")
            return False
        self.__yolo = new_yolo
        self.__modelfun = new_modelfun
        Config.set("Process.LastModel", model_name)
        Config.save()
        return True

    def detect(self, frame):
        """Обработка кадра моделью YOLO"""
        if self.__yolo is None:
            logger.error("Модель YOLO не загружена, пропускаем обработку кадра")
            return None
        predictions = self.__yolo.predict(frame, verbose=False)[0]
        if not predictions:
            logger.warning("Нет предсказаний от модели, пропускаем обработку кадра")
            return None

        logger.debug(
            f"Обработка кадра с моделью {self.__current_model}, найдено {len(predictions.boxes)} объектов"
        )

        return self.__format_predictions(predictions)

    def add_model(self, model_name, model_file_name, confidence_threshold, model_type, processor_file):
        ''' Добавляет новую модель в конфигурацию '''
        yolo_model = YoloModel(
                model_name=model_name,
                model_file_name=model_file_name,
                confidence_threshold=confidence_threshold,
                model_type=model_type,
                processor_file=processor_file,
            )
        self.__models[model_name] = yolo_model

        logger.info(f"Модель {yolo_model.model_name} добавлена в конфигурацию")

    def set_model_threshold(self, model_name, new_threshold):
        if model_name not in self.__models:
            logger.error(f"Модель {model_name} не найдена в списке доступных моделей")
            return False
        self.__models[model_name].confidence_threshold = new_threshold
        Config.set(f"Models.{model_name}.ConfidenceThreshold", new_threshold)
        Config.save()
        logger.info(f"Порог уверенности модели {model_name} изменен на {new_threshold}")
        return True

if __name__ == "__main__":
    detector = Detector()
    print(detector.get_models_list())
    for model in detector.get_models_list():
        print(f"Смена модели на {model['name']}")
        success = detector.change_model(model["name"])
        if success:
            print("Модель успешно изменена")
        else:
            print("Не удалось изменить модель")
    print(detector.get_current_model())

    # Здесь можно добавить код для захвата кадров и передачи их в детектор
    frame_data = redis_client.get("processed_frame")
    if frame_data:
        np_arr = np.frombuffer(frame_data, np.uint8)
        img = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
        predictions, _ = detector.detect(img)

        for box in predictions.boxes:
            x1, y1, x2, y2 = box.xyxy[0]
            cv2.rectangle(img, (int(x1), int(y1)), (int(x2), int(y2)), (255, 0, 0), 2)

    cv2.imshow("Frame", img)
    key = cv2.waitKey(0) & 0xFF

    if key == ord("q"):
        cv2.destroyAllWindows()
        print("Выход из программы")
