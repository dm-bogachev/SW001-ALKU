# Системные импорты
import os, time, sys, threading
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внешние модули
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager

# Внутренние модули
from common.Logger import config_logger
from Background import Background
from DataCollector import DataCollector

logger = config_logger("master-service/main.py")

dc = DataCollector()
dc.start()

pc = Background(dc)
pc.start()

@asynccontextmanager
async def lifespan(app: FastAPI):
    yield

app = FastAPI(
    root_path="/api/master",
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

@app.post("/master/start")
def start_process(ProductName: str, ProductCount: int, InTareIDs: list, OutTareIDs: list):
    """ Запуск процесса """
    logger.debug(f"Запрос /master/start ({ProductName}: {ProductCount}, {InTareIDs}, {OutTareIDs})")
    pc.start_process(ProductName, ProductCount, InTareIDs, OutTareIDs)
    return {"Status": "Process started"}

@app.get("/data")
def get_data():
    """ Получение собранных данных """
    logger.debug("Запрос /data")
    data = pc.collector.get_data()
    return data

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)

