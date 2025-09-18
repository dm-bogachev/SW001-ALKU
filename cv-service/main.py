# Системные импорты
import os, time, sys, threading
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager

# Внутренние модули
import configuration
from common.Logger import config_logger
from FrameProcessor import FrameProcessor
from common.Config import Config

logger = config_logger("cv-service/main.py")

processor = FrameProcessor()
logger.info("Ожидание запуска обработчика кадров...")
while not processor.process_started:
    time.sleep(0.1)

@asynccontextmanager
async def lifespan(app: FastAPI):
    yield

app = FastAPI(
    root_path="/api/cv",
    openapi_url="/openapi.json",
    docs_url="/docs",
    redoc_url="/redoc",
    lifespan=lifespan,
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/health")
def health():
    """ Проверка работоспособности сервиса """
    logger.debug("Запрос /health")
    return {"Status": "OK"}

@app.post("/reboot")
def reboot():
    """ Перезагрузка сервиса """
    logger.debug("Запрос /reboot")
    def delayed_exit():
        time.sleep(1)
        os._exit(0)

    threading.Thread(target=delayed_exit).start()
    return {"Status": "Reboot"}

    
@app.post("/calibrate")
def calibrate():
    """Калибровка камеры."""
    if processor.calibrate():
        return {"Status": "OK", "Calibrated": True, "Origin": processor.calibrator.Origin, "Size": processor.calibrator.Size, "Theta": processor.calibrator.Theta}
    else:
        return {"Status": "Failed", "Calibrated": False}

@app.post("/uncalibrate")
def uncalibrate():
    """Сброс калибровки камеры."""
    processor.calibrator.uncalibrate()
    return {"Status": "OK", "Calibrated": False}

@app.get("/get_models_list")
def get_models_list():
    """Получение списка доступных моделей."""
    models = processor.detector.get_models_list()
    return {"Status": "OK", "Models": models}

@app.post("/change_model")
def change_model(model_name: str):
    """Смена модели детектора."""
    if processor.change_model(model_name):
        return {"Status": "OK", "CurrentModel": model_name}
    else:
        return {"Status": "Failed", "CurrentModel": processor.detector.get_current_model()}
    
@app.get("/get_current_model")
def get_current_model():
    """Получение текущей модели детектора."""
    model = processor.detector.get_current_model()
    if model:
        return {"Status": "OK", "CurrentModel": model}
    else:
        return {"Status": "Failed"}
    
@app.post("/set_processing_delay")
def set_processing_delay(delay: float):
    """Установка задержки между обработкой кадров."""
    processor.set_processing_delay(delay)
    return {"Status": "OK", "Delay": delay}

@app.post("/add_model")
def add_model(model_name: str, model_file_name: str, confidence_threshold: float, model_type: str, processor_file: str):
    """Добавление новой модели детектора."""
    try:
        processor.add_model(model_name, model_file_name, confidence_threshold, model_type, processor_file)
        return {"Status": "OK", "ModelName": model_name, "ModelFileName": model_file_name, "ConfidenceThreshold": confidence_threshold, "ModelType": model_type, "ProcessorFile": processor_file}
    except Exception as e:
        logger.error(f"Ошибка при добавлении модели: {e}")
        return {"Status": "Failed"}

@app.post("/set_model_threshold")
def set_model_threshold(model_name: str, new_threshold: float):
    """Изменение порога уверенности модели."""
    if processor.detector.set_model_threshold(model_name, new_threshold):
        return {"Status": "OK", "ModelName": model_name, "NewThreshold": new_threshold}
    else:
        return {"Status": "Failed", "ModelName": model_name}

@app.post("/change_display_setting")
def change_display_setting(setting: str, value: bool):
    """Изменение настроек отображения."""
    
    valid_settings = ['bbox', 'coordinates', 'keypoints', 'labels', 'scores', 'points', 'pick_angle']
    if setting.lower() not in valid_settings:
        return {"Status": "Failed", "Setting": setting, "Value": value, "Valid Settings": valid_settings}

    if processor.drawer.change_setting(setting.lower(), value):
        return {"Status": "OK", "Setting": setting, "Value": value}
    else:
        return {"Status": "Failed", "Setting": setting}

@app.get("/get_objects")
def get_objects():
    """Получение объектов."""
    objects = processor.get_objects()
    if objects:
        return {"Status": "OK", "Objects": objects}
    else:
        return {"Status": "Failed"}

@app.get("/get_first_object")
def get_first_object():
    """Получение первого объекта."""
    object = processor.get_first_object()
    if object:
        return {"Status": "OK", "Object": object}
    else:
        return {"Status": "Failed"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)