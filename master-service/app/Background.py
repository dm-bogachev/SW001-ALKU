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

    def debug_start(self):
        logger.debug("Вызов отладки: START")
        command = f"START;440.00.026;4;5;5;"
        resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                    headers={'accept': 'application/json'},
                    timeout=1)  # Added timeout
        if resp.status_code != 200:
            logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
        else:
            logger.info(f"Команда отправлена на RS013N: {command}")

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

    def debug_put(self):
        command = "POSITIONEREMPTY;"
        logger.info("Датчик свободен")
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
        self.first_pick = True
        self.attempts = 0

    def start_process(self, ProductName: str, ProductCount: int, InTareIDs: list, OutTareIDs: list):
        
        # response = requests.post(f"{CV_API_URL}/change_model?model_name={ProductName}", 
        #                       headers={'accept': 'application/json'}, 
        #                       timeout=1)

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

        self.first_pick = True
        self.attempts = 0
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
        on_action = False
        while not self.__stop_event.is_set():
            try:
                #logger.debug("Проверка команд от роботов")
                # безопасно получить action (избегаем .lower() у None)
                rs13_action = self.collector.rs013n["action"]
                rs7_action = self.collector.rs007l["action"]

                #logger.debug(f"RS013N action: {rs13_action}")
                #logger.debug(f"RS007L action: {rs7_action}")

                if rs13_action.lower() == "waitpneumaticclose":
                    while True:
                        rs13_action = self.collector.rs013n["action"]
                        if rs13_action.lower() != "waitpneumaticclose":
                            break
                        logger.info("Команда на закрытие пневматики получена")
                        resp = requests.post(f"{IO_API_URL}/tare_on", timeout=8)
                        if resp.status_code == 200:
                            logger.info("Команда на взвешивание отправлена на IO-сервис")
                            on_action = True
                        else:
                            logger.warning("Не удалось отправить команду на взвешивание на IO-сервис")
                        resp = requests.get(f"{IO_API_URL}/input?bit=1", timeout=8)
                        response_data = resp.json()
                        value = response_data["Value"] 
                        if resp.status_code == 200 and value  == 1:
                            logger.info("Пневматика успешно закрыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не закрыта (отсутствует сигнал 1 с IO-сервиса)")
                            logger.debug(resp)
                            logger.debug(response_data)
                            logger.debug(value)
                            logger.debug(resp.status_code)
                            time.sleep(2)
                            continue
                        #
                        resp = requests.get(f"{IO_API_URL}/input?bit=7", timeout=8)
                        response_data = resp.json()
                        value = response_data["Value"] 
                        if resp.status_code == 200 and int(value) == 1:
                            logger.info("Пневматика успешно закрыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не закрыта (отсутствует сигнал 7 с IO-сервиса)")
                            logger.debug(response_data)
                            logger.debug(resp.status_code)
                            time.sleep(2)
                            continue

                        command = f"PNEUMOCLOSE;"
                        resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                                            headers={'accept': 'application/json'},
                                            timeout=1)  # Added timeout
                        if resp.status_code != 200:
                            logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
                        else:
                            logger.info(f"Команда отправлена на RS013N: {command}")
                        #time.sleep(5)
                
                if rs13_action.lower() == "waitpneumaticopen":
                    while True:
                        logger.info("Команда на открытие пневматики получена")
                        rs13_action = self.collector.rs013n["action"]
                        if rs13_action.lower() != "waitpneumaticopen":
                            break
                        resp = requests.post(f"{IO_API_URL}/tare_off", timeout=8)
                        if resp.status_code == 200:
                            logger.info("Команда на снятие взвешивания отправлена на IO-сервис")
                            on_action = True
                        else:
                            logger.warning("Не удалось отправить команду на снятие взвешивания на IO-сервис")
                            
                        resp = requests.get(f"{IO_API_URL}/input?bit=0", timeout=8)
                        response_data = resp.json()
                        value = response_data["Value"] 
                        if resp.status_code == 200 and value  == 1:
                            logger.info("Пневматика успешно открыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не открыта (отсутствует сигнал 0 с IO-сервиса)")
                            logger.debug(resp)
                            logger.debug(response_data)
                            logger.debug(value)
                            logger.debug(resp.status_code)
                            time.sleep(1)
                            continue
                        resp = requests.get(f"{IO_API_URL}/input?bit=6", timeout=8)
                        response_data = resp.json()
                        value = response_data["Value"] 
                        if resp.status_code == 200 and int(value)  == 1:
                            logger.info("Пневматика успешно закрыта (сигнал с IO-сервиса)")
                        else:
                            logger.warning("Пневматика не закрыта (отсутствует сигнал 6 с IO-сервиса)")
                            logger.debug(response_data)
                            logger.debug(resp.status_code)
                            time.sleep(1)
                            continue
                        command = f"PNEUMOOPEN;"
                        resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                                            headers={'accept': 'application/json'},
                                            timeout=1)  # Added timeout
                        if resp.status_code != 200:
                            logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
                        else:
                            logger.info(f"Команда отправлена на RS013N: {command}")
                        on_action = False
                
                if rs13_action.lower() == "waitposfree":
                    resp = requests.get(f"{IO_API_URL}/input?bit=9", timeout=8)
                    response_data = resp.json()
                    value = response_data["Value"] 
                    if resp.status_code == 200 and value  == 1:
                        logger.warning("Деталь на позиционере. Ожидай")
                    else:
                        command = "POSITIONEREMPTY;"
                        logger.info("Датчик свободен")
                        resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                                            headers={'accept': 'application/json'},
                                            timeout=1)  # Added timeout
                        if resp.status_code != 200:
                            logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
                        else:
                            logger.info(f"Команда отправлена на RS013N: {command}")

                if rs13_action.lower() == "waitforpick":
                    
                    ###
                    resp = requests.get(f"{CV_API_URL}/get_first_object", timeout=8)
                    if resp.status_code == 200:
                        # if self.first_pick:
                        #     self.first_pick = False
                        #     #time.sleep(2)
                        #     continue
                        data = resp.json()
                        if data.get("Status") == "OK" and "Object" in data:
                            self.attempts = 0
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
                            time.sleep(2)
                        else:
                            self.attempts = self.attempts + 1
                            logger.error("Объект не обнаружен, парниша")
                            if self.attempts  <= 4:
                                command = f"PALLETEMPTY;"
                                #command = "ffff"
                                logger.warning("Нет доступных объектов для захвата от CV-сервиса")
                                resp = requests.post(f"{RS013N_API_URL}/send_command?command={command}",
                                            headers={'accept': 'application/json'},
                                            timeout=1)  # Added timeout
                                if resp.status_code != 200:
                                    logger.error(f"Ошибка отправки команды на RS013N: {resp.text}")
                                else:
                                    logger.info(f"Команда отправлена на RS013N: {command}")
                            time.sleep(3)
                #time.sleep(4)
            except Exception as e:
                logger.error("Исключение в потоке Master: ", e)
            time.sleep(0.1)



