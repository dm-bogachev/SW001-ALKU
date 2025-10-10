# Системные импорты
import os, sys, socket
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внутренние модули
from common.Logger import config_logger
from common.Config import Config

logger = config_logger("rs0013n-service/RobotConnection.py")

class RobotConnection:
    def __init__(self):
        self.__tcp_attempts = 0
        self.connected = False
        
    def connect(self):
        logger.info(f'Инициализация сокета')
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        host = Config.get("RS0013N.Host", "0.0.0.0")
        port = Config.get("RS0013N.Port", 9013)
        s.bind((host, port))
        s.listen()
        logger.info(f'Сокет находится в состоянии прослушивания на {host}:{port}')
        try:
            self.connection, ip_address = s.accept()
        except socket.timeout:
            logger.warning('Превышено время ожидания подключения')
            return
        self.connection.settimeout(Config.get("RS0013N.Timeout"))
        logger.info(f'Робот с IP {ip_address} подключен')
        self.connected = True

    def disconnect(self):
        if self.connected:
            self.connection.close()
            self.connected = False
            logger.info('Робот отключен')

    def send(self, request):
        try:
            self.connection.sendall(request.encode("UTF-8"))
            logger.debug(f'Отправлены данные: {request}')
        except socket.timeout:
            self.handle_timeout()
        self.__tcp_attempts = 0

    def receive(self):
        try:
            response = self.connection.recv(1024)
        except socket.timeout:
            self.handle_timeout()
            return None
        self.__tcp_attempts = 0
        logger.debug(f'Получены данные: {response}')
        return response

    def handle_timeout(self):
        logger.error('Превышено время ожидания подключения')
        self.__tcp_attempts += 1
        if self.__tcp_attempts >= Config.get("RS0013N.MaxTCPAttempts"):
            logger.error('Превышено количество попыток подключения')
            self.disconnect()