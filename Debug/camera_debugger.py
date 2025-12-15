import cv2
import redis
import logging
import os, sys

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger("camerasim")

REDIS_HOST = "localhost"
REDIS_PORT = 6379
REDIS_DB = 0

logger.debug(f"Попытка подключения к Redis: {REDIS_HOST}:{REDIS_PORT}, DB: {REDIS_DB}")
redis_client = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, db=REDIS_DB)
redis_client.ping() 
logger.info(f"Подключение к Redis успешно: {REDIS_HOST}:{REDIS_PORT}, DB: {REDIS_DB}")

details = {
    1: ["312.229.002", "images", "ok.jpg", "ng.jpg"],
    3: ["312.229.001", "images", "ok.jpg", "ng.jpg"],
    4: ["440.00.26", "images", "ok.jpg", "ng.jpg"],
}

def set_detail(id):
    DETAIL_NAME = details.get(id)[0]

    BASE_DIR = os.path.dirname(os.path.abspath(__file__))
    DETAIL_PATH =  os.path.join(BASE_DIR, details.get(id)[1])
    DETAIL_OK_NAME = details.get(id)[2]
    DETAIL_NG_NAME = details.get(id)[3]
    return DETAIL_NAME, DETAIL_PATH, DETAIL_OK_NAME, DETAIL_NG_NAME

def load_detail(id):
    DETAIL_NAME, DETAIL_PATH, DETAIL_OK_NAME, DETAIL_NG_NAME = set_detail(id)
    logger.info(f"Загрузка изображений деталей {DETAIL_PATH}/{DETAIL_NAME}/{DETAIL_OK_NAME}")
    detail_ok = cv2.imread(f"{DETAIL_PATH}/{DETAIL_NAME}/{DETAIL_OK_NAME}")
    if detail_ok is None:
        logger.error(f"Не удалось загрузить изображение: {DETAIL_PATH}/{DETAIL_NAME}/{DETAIL_OK_NAME}")
        exit(1)

    detail_ng = cv2.imread(f"{DETAIL_PATH}/{DETAIL_NAME}/{DETAIL_NG_NAME}")
    if detail_ng is None:
        logger.error(f"Не удалось загрузить изображение: {DETAIL_PATH}/{DETAIL_NAME}/{DETAIL_NG_NAME}")
        exit(1)
    return detail_ok, detail_ng

def publish_image(image, status):
    """Публикует изображение в Redis с указанным статусом."""
    _, buffer = cv2.imencode('.jpg', image)
    image_bytes = buffer.tobytes()
    redis_client.set("camera_frame", buffer.tobytes())
    logger.info(f"Изображение с статусом '{status}' опубликовано в Redis под ключом 'camera_frame'")

if __name__ == "__main__":
    import time
    cv2.namedWindow("Camera Simulator", cv2.WINDOW_FREERATIO)
    default_id = 4
    detail_ok, detail_ng = load_detail(default_id)
    key = ord('o')  # Начинаем с 'ok' изображения
    while True:
        if key == ord('1'):
            detail_ok, detail_ng = load_detail(1)
            publish_image(detail_ok, "OK")
            cv2.imshow("Camera Simulator", detail_ok)
        elif key == ord('3'):
            detail_ok, detail_ng = load_detail(3)
            publish_image(detail_ok, "OK")
            cv2.imshow("Camera Simulator", detail_ok)
        elif key == ord('4'):
            detail_ok, detail_ng = load_detail(4)
            publish_image(detail_ok, "OK")
            cv2.imshow("Camera Simulator", detail_ok)
        if key == ord('o'):
            publish_image(detail_ok, "OK")
            cv2.imshow("Camera Simulator", detail_ok)
        elif key == ord('n'):
            publish_image(detail_ng, "NG")
            cv2.imshow("Camera Simulator", detail_ng)
        else:
            logger.info("Нажмите 'o' для OK изображения, 'n' для NG изображения, 'q' для выхода.")
        
        key = cv2.waitKey(0) & 0xFF
        if key == ord('q'):
            break
