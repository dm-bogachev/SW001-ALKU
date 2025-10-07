# Системные импорты
import os, time, sys, threading
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внешние модули
from fastapi_offline import FastAPIOffline
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager

import cv2

# Внутренние модули
from common.Logger import config_logger
from HikCamera.HikCamera import HikCamera
from common.Config import Config
from common.Redis import get_redis_client
from common.Utils import is_docker

if is_docker():
   FRAMES_DIR = "/data/captured_frames"
else:
   FRAMES_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "data", "captured_frames")
REDIS_CAMERA_FRAME_KEY = os.getenv("REDIS_CAMERA_FRAME_KEY", "camera_frame")

redis_client = get_redis_client()
logger = config_logger("camera-service/main.py")

def background_frame_sender():
    """Бесконечно получает кадры с камеры и отправляет их в Redis."""
    global hik_camera
    hik_camera = initialize_camera()
    retry_attempts = 0
    max_bad_frames = Config.get("HikCamera.MaxBadFrames", 10)
    while True:
        try:
            if hik_camera.is_opened():
                frame = hik_camera.get_frame()
                if frame is not None:
                    _, buffer = cv2.imencode(".jpg", frame, [cv2.IMWRITE_JPEG_QUALITY, 100])
                    redis_client.set(REDIS_CAMERA_FRAME_KEY, buffer.tobytes())
            else:
                logger.warning("Камера не подключена, повторная попытка через 3 секунды")
                time.sleep(3)
        except Exception as e:
            logger.error(f"Ошибка при получении/отправке кадра: {e}")

            retry_attempts = retry_attempts + 1
            if retry_attempts >= max_bad_frames:
                logger.error(f"Слишком много неудачных попыток подряд, выполняется реинициализация камеры")
                try:
                    hik_camera.close()
                    hik_camera = None
                except Exception as e:
                    logger.error(f"Ошибка при закрытии камеры при реинициализации: {e}")
                while True:
                    try:
                        hik_camera = initialize_camera()
                        break
                    except Exception as e:
                        logger.error(f"Ошибка при подключении к камере: {e}. Попытка повторного подключения через 3 секунды.")
                        time.sleep(3)
                retry_attempts = 0
        time.sleep(Config.get("HikCamera.FrameInterval", 0.1))  # интервал между кадрами, можно уменьшить

def initialize_camera():
    """Попытка подключения к камере Hikvision."""
    try:
        hik_camera = HikCamera()
        Config.set("HikCamera.IPAddress", hik_camera.get_ip())
        Config.set("HikCamera.DeviceName", hik_camera.get_device_name())
        Config.save() 
        hik_camera.open()
        hik_camera.set_exposure(Config.get("HikCamera.ExposureValue"))
        if hik_camera.is_opened():
            logger.info("Камера успешно подключена")
            return hik_camera
    except Exception as e:
        logger.error(f"Ошибка при подключении к камере: {e}. Попытка повторного подключения через 3 секунды.")
        time.sleep(3)

hik_camera = None

# Запуск фонового потока при старте приложения
threading.Thread(target=background_frame_sender, daemon=True).start()

@asynccontextmanager
async def lifespan(app: FastAPIOffline):
    logger.info("Сервис получения кадров камеры Hikvision запущен")
    try:
        yield 
    finally:
        try:
            if hik_camera.is_opened():
                hik_camera.close()
                logger.info("Камера закрыта при остановке сервиса")
        except Exception as e:
            logger.error(f"Ошибка при закрытии камеры при остановке: {e}")
        logger.info("Сервис получения кадров камеры Hikvision остановлен")
    
app = FastAPIOffline(
    root_path="/api/camera",
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

@app.post("/set_exposure")
def set_exposure(exposure_value: int):
    """ Установка значения экспозиции камеры Hikvision """
    logger.debug(f"Запрос /set_exposure: {exposure_value}")

    if hik_camera is None or not hik_camera.is_connected():
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    hik_camera.set_exposure(exposure_value)
    Config.set("HikCamera.ExposureValue", exposure_value)
    Config.save()
    return {"Status": "OK",
            "ExposureValue": exposure_value}

@app.get("/get_exposure")
def get_exposure():
    "Получкние значения экспозиции"
    logger.debug(f"Запрос /get_exposure")
    exposure_value = Config.get("HikCamera.ExposureValue")
    return {"Status": "OK",
            "ExposureValue": exposure_value}

@app.get("/camera_state")
def get_camera_state():
    "Получение информации о статусе подключения к камере"

    if hik_camera is None:
        return {"Status": "OK",
                "ConnectionState": False}

    return {"Status": "OK",
            "ConnectionState": hik_camera.is_connected()}


@app.post("/set_frame_interval")
def set_frame_interval(frame_interval: float):
    """ Установка значения интервала кадров камеры Hikvision, сек"""
    logger.debug(f"Запрос /set_frame_interval: {frame_interval}")
    Config.set("HikCamera.FrameInterval", frame_interval)
    Config.save()
    return {"Status": "OK",
            "FrameInterval": frame_interval}

@app.post("/save_frame")
def save_frame():
    """ Сохранение текущего кадра камеры Hikvision"""
    
    logger.debug("Запрос /save_frame")
    if hik_camera is None or not hik_camera.is_connected():
        logger.error("Камера не подключена")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    frame = hik_camera.last_frame
    if frame is None:
        logger.error("Не удалось получить кадр с камеры")
        return {"Status": "ERROR",
                "Reason": "Failed to get frame"}, 503

    timestamp = time.strftime("%Y_%d_%m_%H_%M_%S")
    filename = f"{FRAMES_DIR}/frame_{timestamp}.png"
    if not os.path.exists(FRAMES_DIR):
        os.makedirs(FRAMES_DIR)
    cv2.imwrite(filename, frame, [cv2.IMWRITE_PNG_COMPRESSION, 0])

    return {"Status": "OK",
            "Filename": filename}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=6500)