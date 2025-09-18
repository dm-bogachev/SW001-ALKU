from .IOModule822_1BF import IOModule822_1BF
from .IOModule821_1BF import IOModule821_1BF

class IOModule:
    def __init__(self, module_name: str, module_id: int):
        self.__module_name = module_name
        self.__module_id = module_id
        self.module_addres
        if module_name == "822-1BF":
            self.__module = IOModule822_1BF()
        elif module_name == "821-1BF":
            self.__module = IOModule821_1BF()
        else:
            raise ValueError(f"Неверное имя модуля: {module_name}")

    def get_bit(self, bit: int):
        return self.__module.get_bit(bit)

    def set_bit(self, bit: int, value: int):
        self.__module.set_bit(bit, value)

    def get_data(self):
        return self.__module.get_data()

    def set_data(self, data: list):
        self.__module.set_data(data)
