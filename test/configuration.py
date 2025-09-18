# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Config import Config


base_settings = {
    "RS007L": {
        "Host": "0.0.0.0",
        "Port": 9001,
        "Timeout": 5,
        "MaxTCPAttempts": 5,
        "PingIntervalMS": 15,
        "InputSize": 256,
        "InputOffset": 1,
        "OutputSize": 256,
        "OutputOffset": 301,
        "InternalSize": 256,
        "InternalOffset": 601,
    },
    "RS013N": {
        "Host": "0.0.0.0",
        "Port": 9002,
        "Timeout": 5,
        "MaxTCPAttempts": 5,
        "PingIntervalMS": 15,
        "InputSize": 256,
        "InputOffset": 1,
        "OutputSize": 256,
        "OutputOffset": 301,
        "InternalSize": 256,
        "InternalOffset": 601,
    },
}

Config.add(base_settings)

