# Системные импорты
import socket
import os, time, sys
from threading import Thread, Event
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager

# Внутренние модули
import configuration
from common.Logger import config_logger
from common.Config import Config
from common.Redis import get_redis_client

logger = config_logger("rs013n-service/Robot.py")
redis = get_redis_client()

class Robot:
   
    def __process_loop(self):
        while True:
            try:
                if not self.__connected:
                    self.__connect()
                self.__receive_data()
                self.__set_data_to_redis()
                self.__get_data_from_redis()
                self.__send_data()
                logger.debug(f'Входные данные: {self.__inputs}')
                logger.debug(f'Выходные данные: {self.__outputs}')
                time.sleep(Config.get("RS013N.PingIntervalMS", 15) / 1000)
            except Exception as e:
                logger.error(f'Ошибка в цикле обработки IO: {e}')

    def __get_data_from_redis(self):
        try:
            data = redis.get(f"IO.RS007L.Output")
            if data:
                # Deserialize the data from string back to list of integers
                data_str = data.decode('utf-8') if isinstance(data, bytes) else data
                int_list = [int(x) for x in data_str.split(',')]
                self.__inputs = int_list

        except Exception as e:
            logger.error(f'Ошибка при получении данных из Redis: {e}')


    def __set_data_to_redis(self):
        try:
            data_str = ','.join([str(x) for x in self.__outputs])
            redis.set(f"IO.RS013N.Output", data_str)
        except Exception as e:
            logger.error(f'Ошибка при записи данных в Redis: {e}')

    def __receive_data(self):
        try:
            data = self.__connection.recv(1024)
            if data:
                logger.debug(f'Получение данных: {data}')
                data_str = data.decode('utf-8').strip() if isinstance(data, bytes) else data.strip()
                
                # Split by semicolon and filter out empty strings
                parts = [part.strip() for part in data_str.split(';') if part.strip()]
                
                if len(parts) >= 2:
                    # Parse each part, handling empty strings and whitespace
                    inputs_str = parts[0].strip()
                    outputs_str = parts[1].strip()
                    internal_str = parts[2].strip()
                    
                    # Parse comma-separated values, filtering out empty strings
                    self.__inputs = [int(x.strip()) for x in inputs_str.split(',') if x.strip()]
                    self.__outputs = [int(x.strip()) for x in outputs_str.split(',') if x.strip()]
                    self.__internal = [int(x.strip()) for x in internal_str.split(',') if x.strip()]
                
        except Exception as e:
            logger.error(f'Ошибка при получении данных: {e}')

    def __send_data(self):
        inputs = ",".join([str(x) for x in self.__inputs])
        outputs = ",".join([str(x) for x in self.__outputs])
        internal = ",".join([str(x) for x in self.__internal])
        data = ";".join([inputs, outputs, internal]) + ";"
        logger.debug(f'Отправка данных: {data}')
        self.__connection.sendall(data.encode("UTF-8"))

    def __connect(self):
        while True:
            logger.info(f'Инициализация TCP/IP handler класса робота с хостом {Config.get("RS013N.Host")} и портом {Config.get("RS013N.Port")}')
            self.__socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            self.__socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            self.__socket.bind((Config.get("RS013N.Host"), Config.get("RS013N.Port")))
            self.__socket.listen()
            logger.info(f'Сокет находится в состоянии прослушивания на {Config.get("RS013N.Host")}:{Config.get("RS013N.Port")}')
            self.__tcp_attempts = 0
            while True:
                try:
                    self.__connection, self.__robotIP = self.__socket.accept()
                    self.__connected = True
                    break
                except socket.timeout:
                    logger.warning('Превышено время ожидания подключения')
                    self.__tcp_attempts += 1
                    if self.__tcp_attempts >= Config.get("RS013N.MaxTCPAttempts", 5):
                        logger.error('Превышено количество попыток подключения')
                        self.__connected = False
                        self.__tcp_attempts = 0
                        break
            if self.__connected:
                self.__connection.settimeout(Config.get("RS013N.Timeout"))
                logger.info(f'Робот с IP {self.__robotIP} подключен')
                Config.set("RS013N.RobotIP", self.__robotIP[0])
                Config.save()
                break

    def __init__(self):
        
        self.__inputs = [0] * int(Config.get("RS013N.InputSize", 256)/16)
        self.__outputs = [0] * int(Config.get("RS013N.OutputSize", 256)/16)
        self.__internal = [0] * int(Config.get("RS013N.InternalSize", 256)/16)

        self.__connected = False
        self.__robotIP = None
        self.__tcp_attempts = 0
        self.__process_thread = Thread(target=self.__process_loop)
        self.__process_thread.start()

# def connect(self):
#         logger.info(f'Start socket initialization')
#         s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#         s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
#         s.bind((self.__config['host'], self.__config['port']))
#         s.listen()
#         logger.info(f'Socket is in listening state on {self.__config["host"]}:{self.__config["port"]}')
#         try:
#             self.connection, ip_address = s.accept()
#         except socket.timeout:
#             logger.warning('Socket accept timed out')
#             return
#         self.connection.settimeout(self.__config['timeout'])
#         logger.info(f'Robot with IP {ip_address} was connected')
#         self.connected = True

#     def disconnect(self):
#         if self.connected:
#             self.connection.close()
#             self.connected = False
#             logger.info('Robot disconnected')

#     def send(self, request):
#         try:
#             self.connection.sendall(request.encode("UTF-8"))
#             logger.debug(f'Sent data: {request}')
#         except socket.timeout:
#             self.handle_timeout()
#         self.__tcp_attempts = 0

#     def receive(self):
#         try:
#             response = self.connection.recv(1024)
#         except socket.timeout:
#             self.handle_timeout()
#             return None
#         self.__tcp_attempts = 0
#         logger.debug(f'Received data: {response}')
#         return response

#     def handle_timeout(self):
#         logger.error('Connection timeout')
#         self.__tcp_attempts += 1
#         if self.__tcp_attempts >= self.__config['max_tcp_attempts']:
#             logger.error('Max TCP attempts reached')
#             self.disconnect()

if __name__ == "__main__":
    robot = Robot() 