# Системные импорты
import os, sys, logging
from datetime import datetime
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

__LOGGING_LEVEL = os.environ.get("LOGGING_LEVEL", "DEBUG").upper()

class ColorFormatter(logging.Formatter):

    """Форматтер логов с цветным выводом в консоль"""
    
    # ANSI escape codes for colors
    COLORS = {
        logging.DEBUG: "\033[30m",    # Black
        logging.INFO: "\033[32m",  # Green
        logging.WARNING: "\033[33m",  # Yellow
        logging.ERROR: "\033[31m",  # Red
        logging.CRITICAL: "\033[35m",  # Magenta
    }
    RESET = "\033[0m"

    def format(self, record):
        
        """Форматирует запись лога с цветным выводом."""

        color = self.COLORS.get(record.levelno, self.RESET)
        timestamp = datetime.fromtimestamp(record.created).strftime("%H:%M:%S")
        pathname = os.path.relpath(record.pathname)
        line = record.lineno
        message = f"{color}{record.levelname:<8} - [{timestamp}] ({record.name}: {pathname}, {line}): {record.getMessage()}{self.RESET}"
        return message


def config_logger(name: str) -> logging.Logger:
    """Конфигурирует и возвращает логгер с заданным именем, уровнем и форматом логирования."""

    handler = logging.StreamHandler()
    handler.setFormatter(ColorFormatter())

    logger = logging.getLogger(name)
    logger.setLevel(__LOGGING_LEVEL)
    logger.addHandler(handler)
    return logger


if __name__ == "__main__":
    test_logger = config_logger("Тест")
    test_logger.debug("Это сообщение уровня DEBUG")
    test_logger.info("Это сообщение уровня INFO")
    test_logger.warning("Это сообщение уровня WARNING")
    test_logger.error("Это сообщение уровня ERROR")
    test_logger.critical("Это сообщение уровня CRITICAL")