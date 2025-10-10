# Системные импорты
import os, time, sys
from threading import Thread, Event
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внешние модули
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager

# Внутренние модули
from common.Logger import config_logger
from common.Config import Config
from RobotConnection import RobotConnection

logger = config_logger("rs0013n-service/Robot.py")

class Robot(Thread):
    def __init__(self):
        super().__init__()
        self.connection = RobotConnection()
        self._request_pending = False
        
        self.stop_event = Event()
        self.ping_interval = Config.get("RS0013N.PingInterval")
        logger.info(f'Инициализация TCP/IP handler класса робота с хостом {Config.get("RS0013N.Host")} и портом {Config.get("RS0013N.Port")}')  
    
    def send_pick(self, coordinates):
        if len(coordinates) == 2:
            x, y = coordinates
            self.connection.send(f'PICK,{x},{y}')
        else:
            x, y, a = coordinates
            self.connection.send(f'PICK,{x},{y},{a}')

    def run(self):
        logger.info(f'Запуск потока робота')
        while not self.stop_event.is_set():
            if not self.connection.connected:
                try:
                    self.connection.connect()
                except ConnectionRefusedError as e:
                    logger.error(f'Ошибка подключения{e}')
            else:
                try:
                    # while self._request_pending:
                    #     logger.warning('Запрос PING уже отправлен, ожидание...')
                    #     time.sleep(0.1)
                    # if not self._request_pending:
                    #     self._request_pending = True
                    #     self.connection.send('PING')
                    response = self.connection.receive()
                    if response is None:
                        self.connection.connected = False
                    # self._request_pending = False
                except Exception as e:
                    logger.error(f'Ошибка подключения{e}')
                    try:
                        self.connection.disconnect()
                    except Exception as e:
                        logger.error(f'Ошибка отключения{e}')
                    self.connection.connected = False
                    # self._request_pending = False
                # finally:
                #     self.stop_event.wait(self.ping_interval)
        
if __name__ == '__main__':
    import time
    robot_handler = Robot()
    robot_handler.start()
    while True:
        while not robot_handler.connection.connected:
            logger.info('Waiting for robot to connect...')
            time.sleep(1)
        logger.info('Robot connected')
        logger.info(robot_handler.send_pick((1, 2)))
        logger.info(robot_handler.send_pick((1, 2, 3)))
        time.sleep(5)

