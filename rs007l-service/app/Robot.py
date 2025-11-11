# Системные импорты
import os, time, sys, socket
from threading import Thread, Event
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внутренние модули
from common.Logger import config_logger
from configuration import Config

logger = config_logger("rs007l-service/Robot.py")

class Robot(Thread):
    def __init__(self):
        super().__init__()
        self.__stop_event = Event()
        self.__connected = False
        self.__connection = None
        # Состояние робота теперь в виде словаря (JSON-подобного)
        self.__state = {
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
            "gripper": None,
            "pickcount": 0,
            "defectcount": 0,
        }
        logger.info(f'Инициализация TCP/IP handler класса робота с хостом {Config.get("RS007L.Host")} и портом {Config.get("RS007L.Port")}')

    def is_connected(self):
        return self.__connected

    def get_state(self):
        # Возвращаем копию, чтобы не позволять внешнему коду менять внутреннее состояние напрямую
        return dict(self.__state)

    def __parse_state(self, data):
        """
        Ожидаемый формат: "SPEED:100;POWER:TRUE;TEACH:FALSE..."
        Сообщение может содержать перевод строки -> объединяем его через ';'
        Ключи приводим к нижнему регистру.
        Преобразуем TRUE/FALSE -> bool, числовые ключи -> int, иначе -> строка.
        """
        try:
            decoded = data.decode('utf-8', errors='ignore').strip()
            if not decoded:
                return

            # Убираем \r и заменяем \n на ';' чтобы объединить двухстрочные сообщения
            decoded = decoded.replace('\r', '')
            decoded = decoded.replace('\n', '')

            parts = [p.strip() for p in decoded.split(';') if p.strip()]

            for part in parts:
                if ':' not in part:
                    continue
                key_raw, value_raw = part.split(':', 1)
                key = key_raw.strip().lower()
                value = value_raw.strip()

                # Boolean
                if value.upper() == 'TRUE':
                    val = True
                elif value.upper() == 'FALSE':
                    val = False
                else:
                    # Попробуем преобразовать в int для известных числовых ключей
                    if key in ('speed', 'ecode', 'pickcount', 'defectcount', 'gripper'):
                        try:
                            val = int(value)
                        except (ValueError, TypeError):
                            val = value
                    else:
                        val = value

                self.__state[key] = val

            # Если мы получили данные — помечаем connected = True
            self.__state['connected'] = True

        except Exception as e:
            logger.error(f'Ошибка парсинга состояния робота: {e}')

    def send(self, data):
        try:
            if self.__connection:
                self.__connection.sendall(data.encode('utf-8'))
                logger.info(f'Отправлено сообщение роботу: {data}')
            else:
                logger.warning('Попытка отправки: соединение отсутствует')
        except Exception as e:
            logger.error(f'Ошибка отправки сообщения роботу: {e}')
            self.__disconnect()

    def run(self):
        logger.info('Запуск потока робота')
        while not self.__stop_event.is_set():
            if not self.__connected:
                self.__state['connected'] = False
                self.__connect()
                time.sleep(0.1)
                continue

            data = self.__receive()
            if data:
                logger.info(f'Получено сообщение от робота: {data}')
                self.__parse_state(data)
            time.sleep(0.1)

    def __receive(self):
        try:
            data = self.__connection.recv(4096)
            if not data:
                self.__disconnect()
                return None
            return data
        except Exception as e:
            logger.error(f'Ошибка получения данных от робота: {e}')
            self.__disconnect()
            return None

    def __connect(self):
        logger.info('Инициализация сокета')
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            host = Config.get("RS007L.Host", "0.0.0.0")
            port = Config.get("RS007L.Port", 9013)
            s.bind((host, port))
            s.listen()
            logger.info(f'Сокет находится в состоянии прослушивания на {host}:{port}')
            try:
                self.__connection, ip_address = s.accept()
            except socket.timeout:
                logger.warning('Превышено время ожидания подключения')
                return
            self.__connection.settimeout(Config.get("RS007L.Timeout"))
            logger.info(f'Робот с IP {ip_address} подключен, таймаут {Config.get("RS007L.Timeout")}')
            self.__state['connected'] = True
            self.__connected = True
        except Exception as e:
            logger.error(f'Ошибка подключения к роботу: {e}')

    def __disconnect(self):
        if self.__connected:
            try:
                if self.__connection:
                    self.__connection.close()
            except Exception:
                pass
            self.__connected = False
            self.__state['connected'] = False
            logger.info('Робот отключен')

if __name__ == '__main__':
    robot_handler = Robot()
    import cv2
    robot_handler.start()
    cv2.namedWindow('Robot State', cv2.WINDOW_NORMAL)
    while True:
        while not robot_handler.is_connected():
            logger.info('Waiting for robot to connect...')
            time.sleep(1)
        logger.info(f'Robot state: {robot_handler.get_state()}')
        key = cv2.waitKey(100)
        if key == ord('q'):
            break
        if key == ord('s'):
            robot_handler.send('GO\n')


