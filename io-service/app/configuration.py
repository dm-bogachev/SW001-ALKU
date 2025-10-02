# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Config import Config


base_settings = {
    "IO": {
        "IPAddress": "192.168.1.253",
        "RefreshRateMS": 10,
        "Modules": {
            "1": "822-1BF",
            "2": "821-1BF"
        },
        "Variables": {
            "DI0": 1000,
            "DI1": 1001,
            "DI2": 1002,
            "DI3": 1003,
            "DI4": 1004,
            "DI5": 1005,
            "DI6": 1006,
            "DI7": 1007,
            "DO0": 0,
            "DO1": 1,
            "DO2": 2,
            "DO3": 3,
            "DO4": 4,
            "DO5": 5,
            "DO6": 6,
            "DO7": 7
        }
    },
}

Config.add(base_settings)

