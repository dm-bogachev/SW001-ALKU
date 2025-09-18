# Системные импорты
import os, sys, logging
from pathlib import Path
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
from common.Logger import __LOGGING_LEVEL, ColorFormatter

def get_project_root() -> Path:
    """Возвращает путь к корню проекта (где docker-compose.yml)"""

    current = Path(__file__).resolve()
    for parent in [current] + list(current.parents):
        if (parent / "docker-compose.yml").exists():
            return parent
    # Если не найден, используем директорию скрипта
    return current.parent


def is_docker() -> bool:
    """Проверяет, запущен ли сервис в Docker-контейнере"""

    # Проверяем наличие файла /.dockerenv и содержимого /proc/self/cgroup
    cgroup = Path("/proc/self/cgroup")
    return Path("/.dockerenv").is_file() or (
        cgroup.is_file() and "docker" in cgroup.read_text()
    )

def setup_fastapi_logging():
    """Настройка логирования для FastAPI"""
    for name in ("uvicorn", "uvicorn.error", "uvicorn.access"):
        logger = logging.getLogger(name)
        logger.handlers.clear()
        handler = logging.StreamHandler()
        handler.setFormatter(ColorFormatter())
        logger.setLevel(__LOGGING_LEVEL)
        logger.addHandler(handler)

if __name__ == "__main__":
    print(f"Project root: {get_project_root()}")
    print(f"Is Docker: {is_docker()}")
