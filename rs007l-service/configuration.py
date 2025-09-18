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
        "PingInterval": 15,
    },
}

Config.add(base_settings)

