# Системные импорты
import os, time, sys, threading
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))))

# Внешние модули
from fastapi_offline import FastAPIOffline
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager

# Внутренние модули
from common.Logger import config_logger
from Robot import Robot

logger = config_logger("rs013n-service/main.py")

robot = Robot()
robot.start()

@asynccontextmanager
async def lifespan(app: FastAPIOffline):
    yield

app = FastAPIOffline(
    root_path="/api/rs013n",
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
    #logger.debug("Запрос /health")
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

@app.post("/start")
def start():
    """ Запуск робота """
    logger.debug("Запрос /start")
    robot.send("START\n")
    return {"Status": "OK"}

@app.post("/continue")
def continue_():
    """ Продолжение работы робота """
    logger.debug("Запрос /continue")
    robot.send("CONTINUE\n")
    return {"Status": "OK"}



@app.get("/status")
def status():
    """ Получение статуса робота """
    logger.debug("Запрос /status")
    return {"Status": "OK", "RobotStatus": robot.get_state()}

@app.post("/send_pick_data")
def send_pick_data(x: float, y: float, angle: float):
    """ Отправка данных захвата на выполнение """
    logger.debug("Запрос /send_pick_data")
    robot.send(f"PICK;{x},{y},{angle}\n")
    logger.debug(f"Отправлено данные захвата: {x}, {y}, {angle}")
    return {"Status": "OK"}

@app.post("/send_command")
def send_command(command: str):
    """ Отправка команды на выполнение """
    logger.debug(f"Запрос /send_command: {command}")
    robot.send(command.upper() + "\n")
    return {"Status": "Command sent", "Command": command}

@app.get("/state")
def get_robot_state():
    "Получение информации о статусе подключения к Роботу"

    if robot is None:
        return {"Status": "OK",
                "ConnectionState": False}

    return {"Status": "OK",
            "ConnectionState": robot.is_connected()}


if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)