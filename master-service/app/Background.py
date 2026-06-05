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

    def debug_pneumo_open(self):
        logger.info("DEBUG: Открытие пневматики")
        command = "PNEUMOOPEN;"
        self.send_command_to_robot(command, "RS013N", RS013N_API_URL)  

    def debug_pneumo_close(self):
        logger.info("DEBUG: Закрытие пневматики")
        command = "PNEUMOCLOSE;"
        self.send_command_to_robot(command, "RS013N", RS013N_API_URL)

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
        #
        self.cycle_delay = 0.25  # Задержка между циклами основного потока в секундах

    def next_step(self):
        logger.info(f"Запрос следующего шага для робота")
        command = f"NEXTSTEP;"
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def set_step_mode(self, enabled: bool):
        if enabled:
            logger.info(f"Включение пошагового режима")
            command = f"STEPMODE;TRUE;"
        else:
            command = f"STEPMODE;FALSE;"
            logger.info(f"Выключение пошагового режима")
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def cycle_on(self):
        logger.info(f"Запуск циклов на роботах")
        command = f"CYCLEON;"
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def reset_defect_counter(self):
        if not self.send_command_to_robot("CLEANDEFECT;", "RS007L", RS007L_API_URL):
            return False
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

    def send_command_to_robot(self, command: str, robot_name: str, robot_api: str):
        response = requests.post(f"{robot_api}/send_command?command={command}",
                                headers={'accept': 'application/json'}, 
                                timeout=1)
        if response.status_code != 200:
            logger.error(f"Ошибка отправки команды на робота {robot_name}: {response.text}")
            return False
        logger.info(f"Команда отправлена на робота {robot_name}: {command}")
        return True

    def get_io_state(self, address):
        try:
            resp = requests.get(f"{IO_API_URL}/input?bit={address}", timeout=8)
        except Exception as e:
            logger.error(f"Ошибка запроса к IO-сервису по адресу {address}: {e}")
            return False

        if resp.status_code != 200:
            logger.error(f"Ошибка получения состояния с IO-сервиса по адресу {address}: {resp.text}")
            return False

        try:
            response_data = resp.json()
        except Exception:
            logger.error(f"Невозможно распарсить JSON от IO-сервиса по адресу {address}: {resp.text}")
            return False

        # response_data can be a dict or a list; normalize to a single item
        if isinstance(response_data, list):
            if len(response_data) == 0:
                logger.error(f"Пустой список в ответе IO-сервиса по адресу {address}")
                return False
            item = response_data[0]
        elif isinstance(response_data, dict):
            item = response_data
        else:
            item = response_data

        # Extract numeric value from possible shapes
        value = None
        if isinstance(item, dict):
            value = item.get("Value") if item.get("Value") is not None else item.get("value")
        else:
            value = item

        try:
            val_int = int(value)
        except Exception:
            logger.error(f"Не удалось интерпретировать значение состояния IO по адресу {address}: {value}")
            return False

        if val_int == 1:
            logger.info(f"Состояние с IO-сервиса по адресу {address}: True")
            return True
        logger.info(f"Состояние с IO-сервиса по адресу {address}: False")
        return False

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

    def open_pneumatic(self):
        self.redrops = 0
        resp = requests.post(f"{IO_API_URL}/tare_off", timeout=8)
        if resp.status_code == 200:
            logger.info("Команда на открытие пневматики отправлена на IO-сервис")
            self.in_process = True
        else:
            logger.warning("Не удалось отправить команду на открытие пневматики на IO-сервис")

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

    def close_pneumatic(self):
        resp = requests.post(f"{IO_API_URL}/tare_on", timeout=8)
        if resp.status_code == 200:
            logger.info("Команда на закрытие пневматики отправлена на IO-сервис")
            self.in_process = True
        else:
            logger.warning("Не удалось отправить команду на закрытие пневматики на IO-сервис")

    def change_model(self, ProductName: str):
        response = requests.post(f"{CV_API_URL}/change_model?model_name={ProductName}", 
                              headers={'accept': 'application/json'}, 
                              timeout=1)

        if response.status_code != 200:
            logger.error(f"Ошибка смены модели в CV-сервисе: {response.text}")
            return False
        return True

    def start_process(self, ProductName: str, ProductSpec: int, ProductCount: int, InTareIDs: list, OutTareIDs: list, Layout: int):
        
        if not self.change_model(ProductName):
            return False
        
        command = f"START;{ProductName};{ProductSpec};{ProductCount};"
        if InTareIDs:
            command += ",".join(str(id) for id in InTareIDs)
            command += ";"
        else: 
            return False
        #
        if OutTareIDs:
            command += ",".join(str(id) for id in OutTareIDs)
            command += ";"
        else:
            return False
        
        command += f"{Layout};"
        
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False

        self.first_pick = True
        self.detect_attempts = 0
        self.redrops = 0
        self.current_product = ProductName
        #
        try:
            requests.post(f"{IO_API_URL}/check_stz", timeout=0.1)
        except Exception as e:
            pass
        #
        return True

    def set_speed(self, speed: int):
        command = f"SPEED;{speed};"
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def send_sensor_state(self, SensorName: str, State: bool):
        command = f"SENSOR;{SensorName};{State};"
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def send_measurement_result(self, result: bool):
        return self.send_command_to_robot(f"MEASUREMENT;{result};", "RS007L", RS007L_API_URL)

    def send_etalon_result(self, result: int):
        send_result = ""
        if result == 0:
            logger.info("Измерение эталона прошло успешно")
            send_result = "OK"
        elif result == -1:
            logger.info("Требуется повторное измерение эталона")
            send_result = "RETRY"
        elif result == -2:
            logger.info("Измерение эталона завершилось ошибкой")
            send_result = "FAILED"
        return self.send_command_to_robot(f"ETALONRESULT;{send_result};", "RS007L", RS007L_API_URL)

    def pause_process(self):
        command = "PAUSE;"
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def resume_process(self):
        command = "RESUME;"
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def stop_process(self):
        command = "STOP;"
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def reset_process(self):
        command = "RESET;"
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def check_etalon(self, etalon_id: int):
        command = f"Etalon;{etalon_id};"
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def ereset(self):
        command = "ERESET;"
        if not self.send_command_to_robot(command, "RS013N", RS013N_API_URL):
            return False
        if not self.send_command_to_robot(command, "RS007L", RS007L_API_URL):
            return False
        return True

    def stop(self):
        """Корректно остановить поток из внешнего кода."""
        self.__stop_event.set()

    def run(self):
        logger.info(f'Запуск потока сбора данных')
        on_action = False
        last_rs13n_action = ""
        last_rs007l_action = ""
        while not self.__stop_event.is_set():
            try:
                # DataCollector may not have populated attributes yet; access safely
                rs13_action = ""
                rs7_action = ""
                rs13 = getattr(self.collector, "rs013n", None) or {}
                rs7 = getattr(self.collector, "rs007l", None) or {}
                rs13_action = str(rs13.get("action", "") or "")
                rs7_action = str(rs7.get("action", "") or "")

                if rs13_action != last_rs13n_action:
                    logger.info(f"Новый запрос от робота RS013N: {rs13_action}")
                    last_rs13n_action = rs13_action
                if rs7_action != last_rs007l_action:
                    logger.info(f"Новый запрос от робота RS007L: {rs7_action}")
                    last_rs007l_action = rs7_action

                if rs13_action.lower() == "waitpneumaticclose":
                    self.process_pneumatic_close()
                
                if rs13_action.lower() == "waitpneumaticopen":
                    self.process_pneumatic_open()

                if rs13_action.lower() == "waitposfree":
                    self.process_check_positioner(RS013N_API_URL)

                if rs7_action.lower() == "waitposfull":
                    self.process_check_positioner(RS007L_API_URL)

                if rs13_action.lower() == "waitforpick":   
                    self.process_waitforpick()

            except Exception as e:
                logger.error("Исключение в потоке Master: ", e)
            time.sleep(self.cycle_delay)

    def process_pneumatic_open(self):
        logger.info("Открытие пневматики")
        #if not self.in_process:
        self.open_pneumatic()
        if self.get_io_state(0) and self.get_io_state(6):
            logger.info("Пневматика успешно открыта")
            command = "PNEUMOOPEN;"
            self.send_command_to_robot(command, "RS013N", RS013N_API_URL)
            self.in_process = False 

    def process_pneumatic_close(self):
        logger.info("Закрытие пневматики")
        #if not self.in_process:
        self.close_pneumatic()
        if self.get_io_state(1) and self.get_io_state(7):
            logger.info("Пневматика успешно закрыта")
            command = "PNEUMOCLOSE;"
            self.send_command_to_robot(command, "RS013N", RS013N_API_URL)
            self.in_process = False
        
    def process_check_positioner(self, ROBOT_API_URL):

        #if os.environ.get("DEBUG", "True").lower() == "True".lower():
        # logger.info("Режим отладки включен, пропуск проверки позиционера")
        # self.send_command_to_robot("POSITIONEREMPTY;", "RS013N", RS013N_API_URL)
        # self.send_command_to_robot("POSITIONERFULL;", "RS007L", RS007L_API_URL)
        # return

        if ROBOT_API_URL == RS007L_API_URL:
            logger.info("Проверка состояния позиционера для RS007L")
            if self.get_io_state(9):
                logger.info("Позиционер занят")
                command = "POSITIONERFULL;"
                self.send_command_to_robot(command, "RS007L", RS007L_API_URL)
        if ROBOT_API_URL == RS013N_API_URL:
            if not self.get_io_state(9):
                logger.info("Позиционер свободен")
                command = "POSITIONEREMPTY;"
                self.send_command_to_robot(command, "RS013N", RS013N_API_URL)

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
                    if self.current_product == "312.229.001":
                        self.shake_fast()
                    else:
                        self.shake_slow()
                    self.detect_attempts = 2
                    self.redrops += 1
                else:
                    command = f"PALLETEMPTY;"
                    logger.warning("Паллета пуста, отправка команды на RS013N")
                    if not self.send_command_to_robot(f"send_command?command={command}", "RS013N", RS013N_API_URL):
                        logger.error(f"Ошибка отправки команды на RS013N: {command}")
                    else:
                        logger.info(f"Команда отправлена на RS013N: {command}")
            self.detect_attempts = self.detect_attempts + 1
            time.sleep(2)