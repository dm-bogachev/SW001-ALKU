import os, time, sys, socket
from threading import Thread, Event
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внутренние модули
from common.Logger import config_logger
from DataCollector import DataCollector
import requests
from api import *  # This imports RS013N_API_URL
# from configuration import Config

logger = config_logger("master-service/CVBackground.py")

class CVBackground(Thread):

    def __init__(self, data_collector: DataCollector):
        super().__init__()
        self.__stop_event = Event()
        self.collector = data_collector
        self.daemon = True  # не блокировать завершение процесса при незакрытом потоке
        self.first_pick = True
        self.detect_attempts = 0
        self.redrops = 0
        self.in_process = False
        self.current_product = ""
        self.pneumatic_state_opened = True
        #
        self.cycle_delay = 0.25  # Задержка между циклами основного потока в секундах

    def stop(self):
        """Корректно остановить поток из внешнего кода."""
        self.__stop_event.set()

    def run(self):
        logger.info(f'Запуск потока сбора данных')
        last_rs13n_action = ""
        #
        while not self.__stop_event.is_set():
            try:
                # DataCollector may not have populated attributes yet; access safely
                rs13_action = ""
                rs13 = getattr(self.collector, "rs013n", None) or {}
                rs13_action = str(rs13.get("action", "") or "")

                if rs13_action != last_rs13n_action:
                    logger.info(f"Новый запрос от робота RS013N: {rs13_action}")
                    last_rs13n_action = rs13_action

                if rs13_action.lower() == "waitforpick":   
                    self.process_waitforpick()

            except Exception as e:
                logger.error("Исключение в потоке Master: ", e)
            time.sleep(self.cycle_delay)

    def process_waitforpick(self):
        x, y, angle = self.get_object_coordinates() or (None, None, None)
        if x is not None and y is not None and angle is not None: 
            logger.info(f"Отправка данных захвата на RS013N: x={x}, y={y}, angle={angle}")
            self.send_coordinates_to_robot(x, y, angle)
            self.detect_attempts = 0
            self.redrops = 0
            time.sleep(2)
        else:
            logger.error("Объект не обнаружен, повтор через 2 секунды")
            if self.detect_attempts <= 5:
                if self.redrops < 4:
                    if self.redrops == 1 or self.redrops == 3:
                    #if self.current_product == "312.229.001":
                        self.shake_fast()
                    else:
                        self.shake_slow()
                    self.detect_attempts = 2
                    self.redrops += 1
                    time.sleep(5)
                else:
                    command = f"PALLETEMPTY;"
                    logger.warning("Паллета пуста, отправка команды на RS013N")
                    if not self.send_command_to_robot(f"send_command?command={command}", "RS013N", RS013N_API_URL):
                        logger.error(f"Ошибка отправки команды на RS013N: {command}")
                    else:
                        logger.info(f"Команда отправлена на RS013N: {command}")
                    time.sleep(5)
            self.detect_attempts = self.detect_attempts + 1


    def get_object_coordinates(self):
        resp = requests.get(f"{CV_API_URL}/get_first_object", timeout=1)
        if resp.status_code != 200:
            logger.error(f"Ошибка получения координат объекта из CV-сервиса: {resp.text}")
            return None
        data = resp.json()
        if data.get("Status") == "OK" and "Object" in data:
            pick_object = data["Object"]
            x = pick_object["pick_point"][0]
            y = pick_object["pick_point"][1]
            angle = pick_object["pick_angle"]
            logger.info(f"Координаты объекта получены из CV-сервиса: x={x}, y={y}, angle={angle}")
            return (x, y, angle)
        else:
            logger.error("Объект не обнаружен в CV-сервисе")
            return None


    def send_command_to_robot(self, command: str, robot_name: str, robot_api: str):
        response = requests.post(f"{robot_api}/send_command?command={command}",
                                headers={'accept': 'application/json'}, 
                                timeout=1)
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на робота {robot_name}: {response.text}")
            return False
        logger.info(f"Команда отправлена на робота {robot_name}: {command}")
        return True


    def send_coordinates_to_robot(self, x: float, y: float, angle: float):
        response = requests.post(f"{RS013N_API_URL}/send_pick_data?x={x}&y={y}&angle={angle}",
                                headers={'accept': 'application/json'}, 
                                timeout=1)
        if response.status_code != 200:
            logger.error(f"Ошибка отправки данных захвата на робота RS013N: {response.text}")
            return False
        logger.info(f"Данные захвата отправлены на робота RS013N: x={x}, y={y}, angle={angle}")
        return True


    def shake_fast(self):
        resp = requests.post(f"{IO_API_URL}/shake_fast", timeout=8)
        if resp.status_code == 200:
            logger.info("Отправлена команда на быстрый пересброс тары")
            self.in_process = True
        else:
            logger.warning("Не удалось отправить команду на а пересброс тары")

    def shake_slow(self):
        resp = requests.post(f"{IO_API_URL}/shake_slow", timeout=8)
        if resp.status_code == 200:
            logger.info("Отправлена команда на медленный пересброс тары")
            self.in_process = True
        else:
            logger.warning("Не удалось отправить команду на а пересброс тары")
