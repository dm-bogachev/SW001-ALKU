# Системные импорты
import os, time, sys
from threading import Thread, Event
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager

# Внутренние модули
from common.Logger import config_logger
from common.Config import Config
from RobotConnection import RobotConnection

logger = config_logger("rs007l-service/Robot.py")

class Robot(Thread):
    
    def __init__(self):
        super().__init__()
        self.connection = RobotConnection()
        self._request_pending = False
        
        self.stop_event = Event()
        self.ping_interval = Config.get("RS007L.PingInterval")
        logger.info(f'Инициализация TCP/IP handler класса робота с хостом {Config.get("RS007L.Host")} и портом {Config.get("RS007L.Port")}')

    def run(self):
        while not self.stop_event.is_set():
            if not self.connection.connected:
                try:
                    self.connection.connect()
                except ConnectionRefusedError as e:
                    logger.error(e)
            else:
                try:
                    while self._request_pending:
                        logger.warning('Запрос PING уже отправлен, ожидание...')
                        time.sleep(0.1) # Sleep for 100ms
                    if not self._request_pending:
                        self._request_pending = True
                        self.connection.send('PING')
                    response = self.connection.receive()
                    if response is None:
                        self.connection.connected = False
                    self._request_pending = False
                except Exception as e:
                    logger.error(f'Error during connection check: {e}')
                    self.connection.connected = False
                    self._request_pending = False
                finally:
                    self.stop_event.wait(self.ping_interval)
        logger.info(f'Запуск потока робота')

    def stop(self):
        self.stop_event.set()
        logger.info(f'Завершение потока робота')

    def __send_command(self, command, no_response=False):
        pending_attempts = 0
        while self._request_pending:
            logger.warning('Запрос PING уже отправлен, ожидание...')
            if pending_attempts > 10:
                logger.error('Превышено количество попыток, прерывание...')
                #self.connection.connected = False
                break
            pending_attempts = pending_attempts + 1
            time.sleep(0.1)  # Wait for 100 milliseconds before checking again
        try:
            self._request_pending = True
            self.connection.send(command)
            if no_response:
                self._request_pending = False
                return None
            response = self.connection.receive()
            self._request_pending = False
            return response
        except Exception as e:
            logger.error(f'Ошибка отправки команды: {e}')
            self._request_pending = False
            return None

    def send_pick(self, model, coordinates):
        if len(coordinates) == 2:
            x, y = coordinates
            return self.__send_command(f'PICK,{model},{2},{x},{y}')
        else:
            x, y, a = coordinates
            return self.__send_command(f'PICK,{model},{3},{x},{y},{a}')

    def send_measurement_request(self, measurement_result):
        if measurement_result:
            result = 'OK'
        else:
            result = 'NG'
        return self.__send_command(f'MEASUREMENT, {result}')

if __name__ == '__main__':
    import time
    logging.basicConfig()
    logger.setLevel(logging.DEBUG)
    robot_handler = Robot()
    robot_handler.start()
    while True:
        while not robot_handler.connection.connected:
            logger.info('Waiting for robot to connect...')
            time.sleep(1)
        logger.info('Robot connected')
        logger.info(robot_handler.send_pick((1, 2), 3))
        logger.info(robot_handler.send_measurement_request(True))
        time.sleep(5)

