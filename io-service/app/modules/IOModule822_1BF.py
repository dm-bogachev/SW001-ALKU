class IOModule822_1BF:
    def __init__(self):
        self.__data = [0] * 8
        self.allowed_output = True

    def get_bit(self, bit: int):
        return self.__data[bit]
    
    def get_data(self):
        return self.__data

    def set_bit(self, bit: int, value: int):
        self.__data[bit] = value
    
    def set_data(self, data: list):
        self.__data = data
