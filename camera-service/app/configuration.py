# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Config import Config

base_settings = {
    "HikCamera": {
        "IPAddress": "255.255.255.255",
        "DeviceName": "HikVision Camera",
        "ExposureValue": 50000,
        "FrameInterval": 0.5,
    },
}

Config.add(base_settings)