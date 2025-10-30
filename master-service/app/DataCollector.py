# Системные импорты
import os, time, sys, socket
from threading import Thread, Event
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внутренние модули
from common.Logger import config_logger
from RobotState import RobotState
import requests
from api import *
# from configuration import Config

logger = config_logger("master-service/DataCollector.py")


class DataCollector(Thread):
    def __init__(self):
        super().__init__()

        self.devices = {
            "rs0013n": "Offline",
            "rs007l": "Offline",
            "io": "Offline",
            "camera": "Offline",
        }


        self.healths = {
            "webui": "unreachable",
            "camera": "unreachable",
            "streaming": "unreachable",
            "cv": "unreachable",
            "io": "unreachable",
            "rs0013n": "unreachable",
            "rs007l": "unreachable",
        }

        self.__stop_event = Event()

    def __check_states(self):
        states = {}
        for api in API_STATE_MAP.values():
            try:
                key = [k for k, v in API_HEALTH_MAP.items() if v == api][0]
                resp = requests.get(f"{api}/state", timeout=2)
                resp.raise_for_status()
                data = resp.json()
                if data.get("ConnectionState", "False"):
                    state = "Online"
                else:
                    state = "Offline"
                states[key] = state
            except requests.exceptions.RequestException as e:
                logger.warning(f"Failed to get state from {api}: {e}")
                states[key] = "Offline"
        return states

    def __check_healths(self):
        healths = {}
        for api in API_HEALTH_MAP.values():
            try:
                key = [k for k, v in API_HEALTH_MAP.items() if v == api][0]
                resp = requests.get(f"{api}/health", timeout=2)
                resp.raise_for_status()
                data = resp.json()

                healths[key] = data.get("Status", "unreachable").lower()
            except requests.exceptions.RequestException as e:
                logger.warning(f"Failed to get health from {api}: {e}")
                healths[key] = "unreachable"
        return healths

    def __collect_robot_data(self, ROBOT_API_URL):
        try:
            resp = requests.get(f"{ROBOT_API_URL}/status", timeout=3)
            resp.raise_for_status()
            data = resp.json()
            if not data:
                return None
            data = data.get("RobotStatus", {})
            robot = RobotState(
                connected=data.get("connected", False),
                power=data.get("power", False),
                teach=data.get("teach", False),
                cs=data.get("cs", False),
                error=data.get("error", False),
                ecode=data.get("ecode", 0),
                teachl=data.get("teachl", False),
                tpemg=data.get("tpemg", False),
                opemg=data.get("opemg", False),
                exemg=data.get("exemg", False),
                home=data.get("home", False),
                batalm=data.get("batalm", False),
                action=data.get("action", ""),
            )
            return robot
        except requests.exceptions.RequestException as e:
            logger.warning(f"Failed to get robot data from {ROBOT_API_URL}: {e}")

    def __collect_rs0013n_data(self):
        return self.__collect_robot_data(RS0013N_API_URL)

    def __collect_rs007l_data(self):
        return self.__collect_robot_data(RS007L_API_URL)

    def get_data(self):
        return {
            "healths": self.healths,
            "states": self.states,
            "rs0013n": self.rs0013n,
            "rs007l": self.rs007l,
        }

    def run(self):
        logger.info(f'Запуск потока сбора данных')
        while not self.__stop_event.is_set():
            self.healths = self.__check_healths()
            self.rs0013n = self.__collect_rs0013n_data()
            self.rs007l = self.__collect_rs007l_data()
            self.states = self.__check_states()
            time.sleep(0.1)

        
if __name__ == '__main__':
    dc = DataCollector()
    dc.start()
    while True:
        try:
            logger.debug(dc.rdata)
            logger.debug(dc.rdata2)
        except Exception as e:
            logger.error(f"Error occurred: {e}")
        
        time.sleep(1)
        pass

