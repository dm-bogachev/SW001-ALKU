class IOModule821_1BF:
    def __init__(self):
        self.__data = [0] * 8
        self.allowed_output = False

    def get_bit(self, bit: int):
        return self.__data[bit]
    
    def get_data(self):
        return self.__data
