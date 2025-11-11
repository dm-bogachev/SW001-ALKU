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
from api import *  # This imports RS013N_API_URL
# from configuration import Config

logger = config_logger("master-service/Master.py")


class Background(Thread):

    def debug_pick(self):
        logger.debug("Вызов отладки: Pick")
        resp = requests.post(f"{RS013N_API_URL}/send_pick_data?x=22&y=22&angle=0",
                    headers={'accept': 'application/json'},
                    timeout=1)  # Added timeout
        if resp.status_code != 200:
            logger.error(f"Ошибка отправки данных захвата на RS013N: {resp.text}")
        else:
            logger.info(f"Данные захвата успешно отправлены на RS013N: x=22, y=22, angle=0")

    def debug_intare_sensor_ok(self):
        logger.debug("Вызов отладки: InTareSensor=OK")
        self.send_sensor_state("stockerintaresensor", True)

    def debug_outtare_sensor_ok(self):
        logger.debug("Вызов отладки: OutTareSensor=OK")
        self.send_sensor_state("stockerouttaresensor", True)

    def debug_pneumo_open(self):
        logger.debug("Вызов отладки: PNEUMOOPEN")
        command = f"PNEUMOOPEN;"
        resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                            headers={'accept': 'application/json'},
                            timeout=1)  # Added timeout
        if resp.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
        else:
            logger.info(f"Команда отправлена на RS013N: {command}")

    def debug_pneumo_close(self):
        logger.debug("Вызов отладки: PNEUMOCLOSE")
        command = f"PNEUMOCLOSE;"
        resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                            headers={'accept': 'application/json'},
                            timeout=1)  # Added timeout
        if resp.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
        else:
            logger.info(f"Команда отправлена на RS013N: {command}")

    def __init__(self, data_collector: DataCollector):
        super().__init__()
        self.__stop_event = Event()
        self.collector = data_collector
        self.daemon = True  # не блокировать завершение процесса при незакрытом потоке

    def start_process(self, ProductName: str, ProductCount: int, InTareIDs: list, OutTareIDs: list):
        failed = False
        command = f"START;{ProductName};{ProductCount};"
        if InTareIDs:
            command += ",".join(str(id) for id in InTareIDs)
            command += ";"
        if OutTareIDs:
            command += ",".join(str(id) for id in OutTareIDs)
            command += ";"
        response = requests.post(f"{RS013N_API_URL}/send_command?command={command}", 
                              headers={'accept': 'application/json'}, 
                              timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS013N: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS013N: {command}")

        response = requests.post(f"{RS007L_API_URL}/send_command?command={command}", 
                              headers={'accept': 'application/json'}, 
                              timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS007L: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS007L: {command}")

        return not failed

    def set_speed(self, speed: int):
        failed = False
        command = f"SPEED;{speed};"
        response = requests.post(f"{RS013N_API_URL}/send_command?command={command}", 
                              headers={'accept': 'application/json'}, 
                              timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS013N: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS013N: {command}")

        response = requests.post(f"{RS007L_API_URL}/send_command?command={command}", 
                              headers={'accept': 'application/json'}, 
                              timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS007L: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS007L: {command}")

        return not failed

    def send_sensor_state(self, SensorName: str, State: bool):
        failed = False
        command = f"Sensor;{SensorName};{State};"
        response = requests.post(f"{RS013N_API_URL}/send_command?command={command}", 
                              headers={'accept': 'application/json'}, 
                              timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS013N: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS013N: {command}")

        response = requests.post(f"{RS007L_API_URL}/send_command?command={command}", 
                              headers={'accept': 'application/json'}, 
                              timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS007L: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS007L: {command}")

        return not failed

    def send_measurement_result(self, result: bool):
        failed = False
        command = f"Measurement;{result};"
        response = requests.post(f"{RS007L_API_URL}/send_command?command={command}", 
                              headers={'accept': 'application/json'}, 
                              timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS007L: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS007L: {command}")

        return not failed

    def pause_process(self):
        failed = False
        command = "PAUSE;"
        response = requests.post(f"{RS013N_API_URL}/send_command?command={command}", 
                      headers={'accept': 'application/json'}, 
                      timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS013N: {response.text}")
            failed = True
        response = requests.post(f"{RS007L_API_URL}/send_command?command={command}", 
                      headers={'accept': 'application/json'}, 
                      timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS007L: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS007L: {command}")

        return not failed

    def resume_process(self):
        failed = False
        command = "RESUME;"
        response = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                      headers={'accept': 'application/json'},   
                      timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS013N: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS013N: {command}")

        response = requests.post(f"{RS007L_API_URL}/send_command?command={command}",
                      headers={'accept': 'application/json'},
                      timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS007L: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS007L: {command}")

        return not failed

    def stop_process(self):
        failed = False
        command = "STOP;"
        response = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                      headers={'accept': 'application/json'},
                      timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS013N: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS013N: {command}")

        response = requests.post(f"{RS007L_API_URL}/send_command?command={command}",
                      headers={'accept': 'application/json'},
                      timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS007L: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS007L: {command}")

        return not failed

    def check_etalon(self, etalon_id: int):
        failed = False
        command = f"Etalon;{etalon_id};"
        response = requests.post(f"{RS007L_API_URL}/send_command?command={command}",
                      headers={'accept': 'application/json'},
                      timeout=1)  # Added timeout
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS007L: {response.text}")
            failed = True
        else:
            logger.info(f"Команда отправлена на RS007L: {command}")

        return not failed


    def stop(self):
        """Корректно остановить поток из внешнего кода."""
        self.__stop_event.set()

    def run(self):
        logger.info(f'Запуск потока сбора данных')
        while not self.__stop_event.is_set():
            try:
                logger.debug("Проверка команд от роботов")
                # безопасно получить action (избегаем .lower() у None)
                rs13_action = getattr(self.collector.rs013n, "action", "") or ""
                rs7_action = getattr(self.collector.rs007l, "action", "") or ""

                logger.debug(f"RS013N action: {rs13_action}")
                logger.debug(f"RS007L action: {rs7_action}")

                if rs13_action.lower() == "waitpneumaticclose":
                    while True:
                        rs13_action = getattr(self.collector.rs013n, "action", "") or ""
                        if rs13_action.lower() != "waitpneumaticclose":
                            break
                        logger.info("Команда на закрытие пневматики получена")
                        resp = requests.post(f"{IO_API_URL}/tare_on", timeout=2)
                        if resp.status_code == 200:
                            logger.info("Команда на взвешивание отправлена на IO-сервис")
                        else:
                            logger.warning("Не удалось отправить команду на взвешивание на IO-сервис")
                        
                        resp = requests.get(f"{IO_API_URL}/input?bit=1", timeout=2)
                        response_data = resp.json()
                        value = response_data[0]["Value"] if isinstance(response_data, list) and len(response_data) > 0 and "Value" in response_data[0] else None
                        if resp.status_code == 200 and value == 1:
                            logger.info("Пневматика успешно закрыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не закрыта (отсутствует сигнал с IO-сервиса)")
                            continue
                        resp = requests.get(f"{IO_API_URL}/input?bit=7", timeout=2)
                        response_data = resp.json()
                        value = response_data[0]["Value"] if isinstance(response_data, list) and len(response_data) > 0 and "Value" in response_data[0] else None
                        if resp.status_code == 200 and value == 1:
                            logger.info("Пневматика успешно закрыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не закрыта (отсутствует сигнал с IO-сервиса)")
                            continue
                        command = f"PNEUMOCLOSE;"
                        resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                                            headers={'accept': 'application/json'},
                                            timeout=1)  # Added timeout
                        if resp.status_code != 200:
                            logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
                        else:
                            logger.info(f"Команда отправлена на RS013N: {command}")

                if rs13_action.lower() == "waitpneumaticopen":
                    while True:
                        rs13_action = getattr(self.collector.rs013n, "action", "") or ""
                        if rs13_action.lower() != "waitpneumaticopen":
                            break
                        logger.info("Команда на открытие пневматики получена")
                        resp = requests.post(f"{IO_API_URL}/tare_off", timeout=2)
                        if resp.status_code == 200:
                            logger.info("Команда на снятие взвешивания отправлена на IO-сервис")
                        else:
                            logger.warning("Не удалось отправить команду на снятие взвешивания на IO-сервис")
                        
                        resp = requests.get(f"{IO_API_URL}/input?bit=0", timeout=2)
                        response_data = resp.json()
                        value = response_data[0]["Value"] if isinstance(response_data, list) and len(response_data) > 0 and "Value" in response_data[0] else None
                        if resp.status_code == 200 and value == 1:
                            logger.info("Пневматика успешно открыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не открыта (отсутствует сигнал с IO-сервиса)")
                            continue
                        resp = requests.get(f"{IO_API_URL}/input?bit=6", timeout=2)
                        response_data = resp.json()
                        value = response_data[0]["Value"] if isinstance(response_data, list) and len(response_data) > 0 and "Value" in response_data[0] else None
                        if resp.status_code == 200 and value == 1:
                            logger.info("Пневматика успешно закрыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не закрыта (отсутствует сигнал с IO-сервиса)")
                            continue
                        command = f"PNEUMOOPEN;"
                        resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                                            headers={'accept': 'application/json'},
                                            timeout=1)  # Added timeout
                        if resp.status_code != 200:
                            logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
                        else:
                            logger.info(f"Команда отправлена на RS013N: {command}")

                if rs13_action.lower() == "waitforpick":
                    resp = requests.get(f"{CV_API_URL}/get_first_object", timeout=2)
                    if resp.status_code == 200:
                        data = resp.json()
                        if data.get("Status") == "OK" and "Object" in data:
                            pick_object = data["Object"]
                            x = pick_object["pick_point"][0]
                            y = pick_object["pick_point"][1]
                            angle = pick_object["pick_angle"]
                            logger.info(f"Отправка данных захвата на RS013N: x={x}, y={y}, angle={angle}")
                            resp = requests.post(f"{RS013N_API_URL}/send_pick_data?x={x}&y={y}&angle={angle}",
                                        headers={'accept': 'application/json'},
                                        timeout=1)  # Added timeout
                            if resp.status_code != 200:
                                logger.error(f"Ошибка отправки данных захвата на RS013N: {resp.text}")
                            else:
                                logger.info(f"Данные захвата успешно отправлены на RS013N: x={x}, y={y}, angle={angle}")
                        else:
                            command = f"NOPICK;"
                            command = "ffff"
                            logger.warning("Нет доступных объектов для захвата от CV-сервиса")
                            resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                                        headers={'accept': 'application/json'},
                                        timeout=1)  # Added timeout
                            if resp.status_code != 200:
                                logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
                            else:
                                logger.info(f"Команда отправлена на RS013N: {command}")
            except Exception as e:
                logger.error("Исключение в потоке Master: ", e)
            time.sleep(0.1)



