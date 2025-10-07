# Системные импорты
import os, time, sys, threading
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внешние модули
from pymodbus.client.sync import ModbusTcpClient  

# Внутренние модули
from common.Logger import config_logger
from common.Config import Config
from modules.IOModule import IOModule
from pymodbus.exceptions import ModbusIOException

logger = config_logger("io-service/IO.py")


class IO:
   
    def load_variables(self):
        variables_config = Config.get("IO.Variables")
        self.__variables = {}
        for variable_name, variable_id in variables_config.items():
            self.__variables[variable_name] = int(variable_id)

    def is_connected(self):
        return self.__connected

    def __process_loop(self):
        logger.info("Запуск цикла обработки IO")
        self.__client = ModbusTcpClient(Config.get("IO.IPAddress"))
        self.__client.connect()
        self.__connected = False
        while True:
            try:
                # Чтение данных
                register = self.__client.read_holding_registers(0, 1).registers[0]
                array = [int(bit) for bit in bin(register)[2:].zfill(16)]
                self.__inputs = array[::-1]
                # Запись данных
                self.__client.write_coils(0, self.__outputs)
                if not self.__connected:
                    logger.info("Устройство подключено")
                    self.__connected = True
                time.sleep(Config.get("IO.RefreshRateMS", 10) / 1000)
            except Exception as e:
                logger.warning("Не удалось подключиться к устройству, попытка переподключения через 3 секунды")
                time.sleep(3)
                self.__connected = False
                self.__client.connect()

    def __init__(self):
        self.__connected = False
        self.load_variables()
        self.__inputs = [0] * 16
        self.__outputs = [0] * 16
        self.__process_thread = threading.Thread(target=self.__process_loop)
        self.__process_thread.start()

    def set_output(self, bit: int, value: int):
        self.__outputs[bit] = value

    def set_outputs(self, outputs: list):
        self.__outputs = outputs

    def get_input(self, bit: int):
        return self.__inputs[bit]

    def get_inputs(self):
        return self.__inputs

    def get_output(self, bit: int):
        return self.__outputs[bit]

    def get_outputs(self):
        return self.__outputs

    def get_variable_list(self):
        return self.__variables

    def set_variable(self, variable_name: str, value: int):
        self.__outputs[self.__variables[variable_name]] = value

    def get_variable(self, variable_name: str):
        if self.__variables[variable_name] >= 1000:
            return self.__inputs[self.__variables[variable_name] - 1000]
        return self.__outputs[self.__variables[variable_name]]


if __name__ == "__main__":
    io = IO()

    while True:
        io.set_output(1, True)
        time.sleep(1)
        io.set_output(1, False)
        time.sleep(1)
