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
from common.Utils import is_docker
from YoloModel import YoloModel
from YoloData import YoloData

logger = config_logger("cv-service/ProcessFunction.py")

if is_docker():
    POSTPROCESSORS_DIR = "/data/postprocessors"
else:
    POSTPROCESSORS_DIR = os.path.join(
        os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "data", "postprocessors"
    )

class ProcessFunction:

    def __init__(self):
        self.__func = None

    def load_function(self, model):
        logger.debug(f"Загрузка функции {model.processor_file}")
        spec = importlib.util.spec_from_file_location("module.name", POSTPROCESSORS_DIR + "/" + model.processor_file)
        module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(module)
        self.__func = module
        logger.info(f"Функция {model.processor_file} загружена")

    def process(self, frame, yolo_data):
        try:
            if self.__func:
                return self.__func.process(frame, yolo_data)
        except AttributeError as e:
            logger.error("Отсутствует функция process")
        return yolo_data