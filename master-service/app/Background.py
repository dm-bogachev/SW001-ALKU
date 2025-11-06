# Системные импорты
import os, time, sys, socket
from threading import Thread, Event
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внутренние модули
from common.Logger import config_logger
from RobotState import RobotState
from DataCollector import DataCollector
import requests
from api import *
# from configuration import Config

logger = config_logger("master-service/Master.py")


class Background(Thread):
    def __init__(self, data_collector: DataCollector):
        super().__init__()
        self.__stop_event = Event()
        self.collector = data_collector
        self.daemon = True  # не блокировать завершение процесса при незакрытом потоке

    def start_process(self, ProductName: str, ProductCount: int, InTareIDs: list, OutTareIDs: list):
        pass

    def stop(self):
        """Корректно остановить поток из внешнего кода."""
        self.__stop_event.set()

    def run(self):
        logger.info(f'Запуск потока сбора данных')
        while not self.__stop_event.is_set():
            try:
                logger.debug("Проверка команд от роботов")
                # безопасно получить action (избегаем .lower() у None)
                rs13_action = getattr(self.collector.rs0013n, "action", "") or ""
                rs7_action = getattr(self.collector.rs007l, "action", "") or ""

                logger.debug(f"RS0013N action: {rs13_action}")
                logger.debug(f"RS007L action: {rs7_action}")

                if rs13_action.lower() == "waitpneumaticclose":
                    while True:
                        logger.info("Команда на закрытие пневматики получена")
                        resp = requests.post(f"{IO_API_URL}/tare_on", timeout=2)
                        if resp.status_code == 200:
                            logger.info("Команда на взвешивание отправлена на IO-сервис")
                        else:
                            logger.warning("Не удалось отправить команду на взвешивание на IO-сервис")
                        
                        resp = requests.get(f"{IO_API_URL}/input?bit=1", timeout=2)
                        if resp.status_code == 200 and resp.json().get("Value") == 1:
                            logger.info("Пневматика успешно закрыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не закрыта (отсутствует сигнал с IO-сервиса)")
                            continue
                        resp = requests.get(f"{IO_API_URL}/input?bit=7", timeout=2)
                        if resp.status_code == 200 and resp.json().get("Value") == 1:
                            logger.info("Пневматика успешно закрыта (сигнал с IO-сервиса)")
                            break
                        else:
                            logger.warning("Пневматика не закрыта (отсутствует сигнал с IO-сервиса)")
                            continue
                    resp = requests.post(f"{RS0013N_API_URL}/continue", timeout=2)

                if rs13_action.lower() == "waitpneumaticopen":
                    while True:
                        logger.info("Команда на открытие пневматики получена")
                        resp = requests.post(f"{IO_API_URL}/tare_off", timeout=2)
                        if resp.status_code == 200:
                            logger.info("Команда на снятие взвешивания отправлена на IO-сервис")
                        else:
                            logger.warning("Не удалось отправить команду на снятие взвешивания на IO-сервис")
                        
                        resp = requests.get(f"{IO_API_URL}/input?bit=0", timeout=2)
                        if resp.status_code == 200 and resp.json().get("Value") == 1:
                            logger.info("Пневматика успешно открыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не открыта (отсутствует сигнал с IO-сервиса)")
                            continue
                        resp = requests.get(f"{IO_API_URL}/input?bit=6", timeout=2)
                        if resp.status_code == 200 and resp.json().get("Value") == 1:
                            logger.info("Пневматика успешно закрыта (сигнал с IO-сервиса)")
                            break
                        else:
                            logger.warning("Пневматика не закрыта (отсутствует сигнал с IO-сервиса)")
                            continue
                    resp = requests.post(f"{RS0013N_API_URL}/continue", timeout=2)


            except Exception:
                logger.exception("Исключение в потоке Master")
            time.sleep(0.1)



