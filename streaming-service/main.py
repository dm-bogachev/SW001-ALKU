# Системные импорты
import os, time, sys, threading
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager
from fastapi.responses import StreamingResponse

# Внутренние модули
import configuration
from common.Logger import config_logger
from common.Redis import get_redis_client
from common.Config import Config

REDIS_CAMERA_FRAME_KEY = os.getenv("REDIS_CAMERA_FRAME_KEY", "camera_frame")
REDIS_PROCESSED_FRAME_KEY = os.getenv("REDIS_PROCESSED_FRAME_KEY", "processed_frame")

redis_client = get_redis_client()
logger = config_logger("streaming-service/main.py")

def mjpeg_generator():
    """Генератор для MJPEG потока."""
    while True:
        try:
            frame_data = redis_client.get(CURRENT_REDIS_KEY)
            if frame_data:
                yield (
                    b"--frame\r\n"
                    b"Content-Type: image/jpeg\r\n\r\n" + frame_data + b"\r\n"
            )
        except Exception as e:
            logger.error(f"Произошла ошибка при генерации MJPEG потока: {e}")
        time.sleep(1/Config.get("Streaming.FPS", 24))  # ~24 fps

def get_redis_key():
    """Получает ключ Redis из конфигурации."""
    key_name =  Config.get("Streaming.DisplayedFrame")
    logger.debug(f"Получение ключа Redis из конфигурации: {key_name}")
    if key_name == "REDIS_CAMERA_FRAME_KEY":
        return REDIS_CAMERA_FRAME_KEY
    elif key_name == "REDIS_PROCESSED_FRAME_KEY":
        return REDIS_PROCESSED_FRAME_KEY
    else:
        return REDIS_CAMERA_FRAME_KEY  # значение по умолчанию, если ключ не найден

CURRENT_REDIS_KEY = get_redis_key()
logger.debug(f"INITIAL CURRENT_REDIS_KEY установлен на {CURRENT_REDIS_KEY}")

@asynccontextmanager
async def lifespan(app: FastAPI):
    logger.info("Сервис стриминга кадров запущен")
    try:
        yield
    finally:
        logger.info("Сервис стриминга кадров остановлен")

app = FastAPI(
    root_path="/api/streaming",
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

@app.get("/stream")
def video_feed():
    """Эндпоинт для MJPEG потока."""
    return StreamingResponse(
        mjpeg_generator(), media_type="multipart/x-mixed-replace; boundary=frame"
    )

@app.post("/set_fps")
def set_fps(fps: float):
    """Установить частоту кадров для стриминга."""
    logger.debug(f"Запрос /set_fps: {fps}")
    Config.set("Streaming.FPS", fps)
    Config.save()
    logger.debug(f"Частота кадров для стриминга установлена на {fps}")
    return {"Status": "OK",
            "FPS": fps}

@app.post("/stream_camera_frame")
def stream_camera_frame():
    global CURRENT_REDIS_KEY
    """Установить ключ Redis для стриминга кадра камеры."""
    logger.debug("Запрос /stream_camera_frame")
    Config.set("Streaming.DisplayedFrame", "REDIS_CAMERA_FRAME_KEY")
    Config.save()
    CURRENT_REDIS_KEY = REDIS_CAMERA_FRAME_KEY
    logger.debug("Ключ Redis для стриминга кадра камеры установлен")
    return {"Status": "OK",
            "DisplayedFrame": "REDIS_CAMERA_FRAME_KEY"}

@app.post("/stream_processed_frame")
def stream_processed_frame():
    global CURRENT_REDIS_KEY
    """Установить ключ Redis для стриминга обработанного кадра."""
    logger.debug("Запрос /stream_processed_frame")
    Config.set("Streaming.DisplayedFrame", "REDIS_PROCESSED_FRAME_KEY")
    Config.save()
    CURRENT_REDIS_KEY = REDIS_PROCESSED_FRAME_KEY
    logger.debug("Ключ Redis для стриминга обработанного кадра установлен")
    return {"Status": "OK",
            "DisplayedFrame": "REDIS_PROCESSED_FRAME_KEY"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)