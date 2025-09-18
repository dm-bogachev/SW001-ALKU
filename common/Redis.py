# Системные импорты
import os, sys, time
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
import redis

# Внутренние модули
from common.Logger import config_logger
logger = config_logger("Redis.py")

REDIS_HOST = os.getenv("REDIS_HOST", "localhost")
REDIS_PORT = int(os.getenv("REDIS_PORT", "6379"))
REDIS_DB = int(os.getenv("REDIS_DB", "0"))

def get_redis_client():
    """Возвращает клиент Redis, подключенный к заданному хосту, порту и базе данных."""
    while True:
        try:
            logger.debug(f"Попытка подключения к Redis: {REDIS_HOST}:{REDIS_PORT}, DB: {REDIS_DB}")
            redis_client = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, db=REDIS_DB)
            redis_client.ping() 
            logger.info(f"Подключение к Redis успешно: {REDIS_HOST}:{REDIS_PORT}, DB: {REDIS_DB}")
            return redis_client
        except Exception as e:
            logger.error(f"Произошла ошибка при попытке установки подключения к Redis: {e}. Повтор через 5 секунд")
            time.sleep(5)

if __name__ == "__main__":
    client = get_redis_client()
    try:
        client.ping()
        logger.info("Пинг к Redis успешен")
    except redis.ConnectionError as e:
        logger.error(f"Не удалось подключиться к Redis: {e}")