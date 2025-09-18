# Системные импорты
import os, sys, json
from pathlib import Path
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Utils import is_docker, get_project_root
from common.Logger import config_logger

logger = config_logger("Config")

class Config:
    """Базовый класс конфигурации приложения"""

    @classmethod
    def init(cls):
        """Инициализирует конфигурацию, загружая её из файла"""
        logger.debug("Загрузка конфигурации")
        cls.__config_name = os.environ.get("CONFIG_NAME", "config.json")
        cls.__config_path = cls.__get_config_path(cls.__config_name)
        os.makedirs(cls.__config_path.parent, exist_ok=True)

        cls.__config = cls.__load_config()
        cls.__newconfig = cls.__load_config()
        # Сохраняем исходную конфигурацию для отслеживания изменений
        cls._original_config = cls.__config.copy() if cls.__config else {}
        # Инициализируем список для отслеживания измененных ключей
        cls._modified_keys = set()

    @classmethod
    def __load_config(cls):
        """Загружает конфигурацию из файла"""
        if cls.__config_path.is_file():
            with open(cls.__config_path, "r", encoding="utf-8") as f:
                return json.load(f)
        else:
            logger.warning(f"Файл конфигурации не найден: {cls.__config_path}")
            return {}

    @classmethod
    def __get_config_path(cls, config_name: str) -> Path:
        """
        Получает путь к файлу конфигурации в зависимости
        от среды выполнения (Docker или локально)
        """
        if is_docker():
            return Path("/data/") / config_name
        project_root = get_project_root()

        logger.debug(f"Корень проекта: {project_root}")
        return project_root / "data" / config_name

    @classmethod
    def get_config(cls) -> dict:
        """Возвращает текущую конфигурацию"""
        return cls.__config

    @classmethod
    def add(cls, config_part: dict) -> None:
        """
        Рекурсивно добавляет только отсутствующие ключи, включая вложенные словари.
        """

        def merge_missing(target, source, prefix=""):
            for key, value in source.items():
                full_key = f"{prefix}.{key}" if prefix else key
                if key not in target:
                    logger.debug(f"Добавление отсутствующего ключа в конфигурацию: {full_key}")
                    target[key] = value
                    # Отслеживаем добавленный ключ
                    if not hasattr(cls, '_modified_keys'):
                        cls._modified_keys = set()
                    cls._modified_keys.add(full_key)
                elif isinstance(value, dict) and isinstance(target.get(key), dict):
                    merge_missing(target[key], value, full_key)

        merge_missing(cls.__config, config_part)
        cls.__save_config()

    @classmethod
    def get(cls, key: str, default=None):
        """
        Возвращает значение из конфигурации по ключу,
        поддерживает вложенные ключи через точку
        """
        keys = key.split(".")
        d = cls.__config
        for k in keys:
            if isinstance(d, dict) and k in d:
                d = d[k]
            else:
                return default
        return d

    @classmethod
    def set(cls, key: str, value):
        """Устанавливает значение в конфигурацию по ключу,
        создавая промежуточные словари при необходимости."""
        keys = key.split(".")
        d = cls.__config
        for k in keys[:-1]:
            if k not in d or not isinstance(d[k], dict):
                d[k] = {}
            d = d[k]
        d[keys[-1]] = value
        
        # Отслеживаем измененные ключи
        if not hasattr(cls, '_modified_keys'):
            cls._modified_keys = set()
        cls._modified_keys.add(key)
        
        logger.debug(f"Установлено значение: {key} = {value}")
        # cls.__save_config()

    @classmethod
    def __save_config(cls) -> None:
        """Сохраняет текущую конфигурацию в файл, сохраняя внешние изменения"""
        
        # Загружаем текущее состояние файла (внешние изменения)
        external_config = cls.__load_config()
        
        # Создаем копию текущей конфигурации для сохранения
        config_to_save = external_config.copy() if external_config else {}
        
        # Применяем только те изменения, которые были сделаны программно с момента последнего сохранения
        def apply_explicit_changes(target, current_config, last_saved_config):
            """Применяет только явные программные изменения"""
            if not hasattr(cls, '_modified_keys'):
                return
                
            for key_path in cls._modified_keys.copy():
                keys = key_path.split('.')
                current_value = current_config
                last_saved_value = last_saved_config
                target_dict = target
                
                # Навигация по вложенной структуре
                for i, k in enumerate(keys[:-1]):
                    if k in current_value and isinstance(current_value[k], dict):
                        current_value = current_value[k]
                    else:
                        break
                        
                    if k in last_saved_value and isinstance(last_saved_value[k], dict):
                        last_saved_value = last_saved_value[k]
                    else:
                        last_saved_value = {}
                        
                    if k not in target_dict:
                        target_dict[k] = {}
                    target_dict = target_dict[k]
                else:
                    # Дошли до конечного ключа
                    final_key = keys[-1]
                    if final_key in current_value:
                        target_dict[final_key] = current_value[final_key]
                        logger.debug(f"Сохранение явного изменения: {key_path} = {current_value[final_key]}")
        
        # Применяем явные изменения
        if hasattr(cls, '_original_config'):
            apply_explicit_changes(config_to_save, cls.__config, cls._original_config)
        else:
            # Если нет исходной конфигурации, просто сохраняем текущую
            config_to_save = cls.__config.copy()
        
        # Сохраняем результат
        with open(cls.__config_path, "w", encoding="utf-8") as f:
            json.dump(config_to_save, f, indent=4, ensure_ascii=False)
        logger.debug(f"Конфигурация сохранена в {cls.__config_path}")
        
        # Обновляем состояние для следующего сохранения
        cls._original_config = config_to_save.copy()
        # Очищаем список измененных ключей
        if hasattr(cls, '_modified_keys'):
            cls._modified_keys.clear()

    @classmethod
    def save(cls) -> None:
        """Публичный метод для сохранения конфигурации"""
        cls.__save_config()

Config.init()

if __name__ == "__main__":
    test_config = {
        "Test": {
            "TestKey1": "TestValue1",
            "TestKey2": 123,
            "TestKey3": {
                "SubKey1": "SubValue1",
                "SubKey2": 456,
                "SubKey3": {"DeepKey": "DeepValue"}
            },
        }
    }
    Config.add(test_config)
    config = Config.get_config()
    logger.info(config)
