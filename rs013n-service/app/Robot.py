# Системные импорты
import os, time, sys, socket
from threading import Thread, Event
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внутренние модули
from common.Logger import config_logger
from configuration import Config
from RobotState import RobotState

logger = config_logger("rs0013n-service/Robot.py")

class Robot(Thread):
    def __init__(self):
        super().__init__()
        self.__stop_event = Event()
        self.__connected = False
        self.__connection = None
        self.__state = RobotState()
        logger.info(f'Инициализация TCP/IP handler класса робота с хостом {Config.get("RS0013N.Host")} и портом {Config.get("RS0013N.Port")}')  

    def is_connected(self):
        return self.__connected

    def get_state(self):
        return self.__state

    def __parse_state(self, data):
        try:
            data = data.decode('utf-8').lower()
            data = data.replace('\n', '')
            data = data.replace('\r', '')
            for part in data.split(';'):
                if ':' in part:
                    key, value = part.split(':', 1)
                    if value.upper() == 'TRUE':
                        setattr(self.__state, key.strip(), True)
                    elif value.upper() == 'FALSE':
                        setattr(self.__state, key.strip(), False)
                    elif value.strip().isdigit():
                        setattr(self.__state, key.strip(), int(value.strip()))
                    else:
                        setattr(self.__state, key.strip(), value.strip())
        except Exception as e:
            logger.error(f'Ошибка парсинга состояния робота: {e}')


    def send(self, data):
        try:
            self.__connection.sendall(data.encode('utf-8'))
            logger.info(f'Отправлено сообщение роботу: {data}')
        except Exception as e:
            logger.error(f'Ошибка отправки сообщения роботу: {e}')
            self.__disconnect()

    def run(self):
        logger.info(f'Запуск потока робота')
        while not self.__stop_event.is_set():
            if not self.__connected:
                self.__state.connected = False
                self.__connect()
                continue
            
            data = self.__receive()
            if data:
                logger.info(f'Получено сообщение от робота: {data}')
                self.__parse_state(data)
            time.sleep(0.1)
            

    def __receive(self):
        try:
            data = self.__connection.recv(1024)
            if not data:
                self.__disconnect()
                return
            return data
        except Exception as e:
            logger.error(f'Ошибка получения данных от робота: {e}')
            self.__disconnect()
            return None

    def __connect(self):
        logger.info(f'Инициализация сокета')
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            host = Config.get("RS0013N.Host", "0.0.0.0")
            port = Config.get("RS0013N.Port", 9013)
            s.bind((host, port))
            s.listen()
            logger.info(f'Сокет находится в состоянии прослушивания на {host}:{port}')
            try:
                self.__connection, ip_address = s.accept()
            except socket.timeout:
                logger.warning('Превышено время ожидания подключения')
                return
            self.__connection.settimeout(Config.get("RS0013N.Timeout"))
            logger.info(f'Робот с IP {ip_address} подключен, таймаут {Config.get("RS0013N.Timeout")}')
            self.__state.connected = True       
            self.__connected = True
        except Exception as e:
            logger.error(f'Ошибка подключения к роботу: {e}')
            
        
    def __disconnect(self):
        if self.__connected:
            self.__connection.close()
            self.__connected = False
            logger.info('Робот отключен')
        
if __name__ == '__main__':
    # import time
    robot_handler = Robot()
    import cv2
    robot_handler.start()
    cv2.namedWindow('Robot State', cv2.WINDOW_NORMAL)
    while True:
        while not robot_handler.is_connected():
            logger.info('Waiting for robot to connect...')
            time.sleep(1)
        logger.info(f'Robot state: {robot_handler.get_state()}')
        #time.sleep(1)
        key = cv2.waitKey(100)
        if key == ord('q'):
            break
        if key == ord('s'):
            robot_handler.send('GO\n')


