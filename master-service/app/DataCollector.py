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
            "rs013n": "Offline",
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
            "rs013n": "unreachable",
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
                #logger.warning(f"Failed to get state from {api}: {e}")
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
                #logger.warning(f"Failed to get health from {api}: {e}")
                healths[key] = "unreachable"
        return healths

    def __collect_robot_data(self, ROBOT_API_URL):
        defaults = {
            "connected": False,
            "speed": 100,
            "power": False,
            "teach": False,
            "cs": False,
            "error": False,
            "ecode": 0,
            "teachl": False,
            "tpemg": False,
            "opemg": False,
            "exemg": False,
            "home": False,
            "batalm": False,
            "action": "",
            "tarein": None,
            "tareout": None,
            "gripper": None,
            "pickcount": 0,
            "defectcount": 0,
            "state": -1,
            "hour": -1,
            "stepmode": False
        }

        try:
            resp = requests.get(f"{ROBOT_API_URL}/status", timeout=3)
            resp.raise_for_status()
            payload = resp.json()
            if not payload:
                return defaults.copy()

            rs = payload.get("RobotStatus", {}) or {}
            result = defaults.copy()

            # Boolean-like fields
            for key in ("connected", "power", "teach", "cs", "error",
                        "teachl", "tpemg", "opemg", "exemg", "home", "batalm",
                        "stepmode"):
                if key in rs:
                    val = rs.get(key)
                    if isinstance(val, str):
                        v = val.strip().upper()
                        if v == "TRUE":
                            result[key] = True
                        elif v == "FALSE":
                            result[key] = False
                        else:
                            result[key] = bool(val)
                    else:
                        result[key] = bool(val)

            # Integer-like fields
            for key in ("speed", "ecode", "pickcount", "defectcount", "tarein",
                         "tareout", "gripper", "state", "hour"):
                if key in rs:
                    try:
                        result[key] = int(rs.get(key))
                    except (TypeError, ValueError):
                        # keep default on parse failure
                        pass
            if key in ("hour",):
                if key in rs:
                    try:
                        result[key] = float(rs.get(key))
                    except (TypeError, ValueError):
                        # keep default on parse failure
                        pass
            # Action / others
            if "action" in rs:
                result["action"] = str(rs.get("action") or "")

            return result

        except requests.exceptions.RequestException as e:
            logger.warning(f"Failed to get robot data from {ROBOT_API_URL}: {e}")
            return defaults.copy()

    def __collect_rs013n_data(self):
        # Use generic collector and adapt defaults for RS013N if needed
        return self.__collect_robot_data(RS013N_API_URL)

    def __collect_rs007l_data(self):
        """
        RS007L не использует параметры 'tarein' и 'tareout'.
        Берём общий словарь от __collect_robot_data и удаляем эти ключи, если они там есть.
        """
        data = self.__collect_robot_data(RS007L_API_URL)
        if data is None:
            return None
        # Удаляем ключи, которые не применимы к RS007L
        data.pop("tarein", None)
        data.pop("tareout", None)
        return data

    def __collect_cv_data(self):
        """
        Сбор состояния CV: возвращает dict:
        {
          "model": "<model_name or model_file_name or empty>",
          "objectcount": <int>
        }
        """
        defaults = {
            "model": "",
            "objectcount": 0,
        }

        try:
            resp = requests.get(f"{CV_API_URL}/get_state", timeout=3)
            resp.raise_for_status()
            payload = resp.json()
            if not payload:
                return defaults.copy()

            result = defaults.copy()

            # Extract model information from ModelName dict
            model_info = payload.get("ModelName")
            if isinstance(model_info, dict):
                model_name = model_info.get("model_name")
                if model_name:
                    result["productname"] = str(model_name)

            # Get object count from payload
            count = payload.get("Count")
            if count is None:
                # возможные альтернативы
                count = payload.get("count") or payload.get("ObjectCount") or payload.get("ObjectsCount")
            try:
                result["objectcount"] = int(count) if count is not None else 0
            except (ValueError, TypeError):
                result["objectcount"] = 0

            return result

        except requests.exceptions.RequestException as e:
            logger.warning(f"Failed to get CV data from {CV_API_URL}: {e}")
            return defaults.copy()

    def get_data(self):
        return {
            "healths": self.healths,
            "states": self.states,
            "rs013n": self.rs013n,
            "rs007l": self.rs007l,
            "cv": self.cv,
        }

    def run(self):
        logger.info(f'Запуск потока сбора данных')
        while not self.__stop_event.is_set():
            self.healths = self.__check_healths()
            self.rs013n = self.__collect_rs013n_data()
            self.rs007l = self.__collect_rs007l_data()
            self.states = self.__check_states()
            self.cv = self.__collect_cv_data()
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

