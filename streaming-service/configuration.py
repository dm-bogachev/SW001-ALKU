# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Config import Config


base_settings = {
    "Streaming": {
        "DisplayedFrame": "REDIS_CAMERA",  # Options: REDIS_CAMERA, REDIS_PROCESSED_FRAME
        "FPS": 24  # Частота кадров для стриминга
    },
}

Config.add(base_settings)

