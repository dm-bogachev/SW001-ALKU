# Системные импорты
import os, time, sys, threading
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
from fastapi_offline import FastAPIOffline
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager

# Внутренние модули
import configuration
from common.Logger import config_logger
from IO import IO
from typing import Annotated, List, Literal
import asyncio

logger = config_logger("io-service/main.py")

def background_io_starter():
    global io
    io = IO()

io = None

# Запуск фонового потока при старте приложения
threading.Thread(target=background_io_starter, daemon=True).start()

@asynccontextmanager
async def lifespan(app: FastAPIOffline):
    yield

app = FastAPIOffline(
    root_path="/api/io",
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



@app.get("/state")
def get_io_state():
    "Получение информации о статусе подключения к I/O модулю"

    if io is None:
        return {"Status": "OK",
                "ConnectionState": False}

    return {"Status": "OK",
            "ConnectionState": io.is_connected()}

# API endpoints для IO операций

# Одиночные сигналы
@app.post("/output")
def set_output(bit: int, value: int):
    """ Установить значение выхода """
    logger.debug(f"Запрос /output/ с параметрами: bit={bit}, value={value}")

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    io.set_output(bit, value)
    return {"Status": "OK", "Bit": bit, "Value": value}

@app.get("/output")
def get_output(bit: int):
    """ Получить значение выхода """
    logger.debug(f"Запрос /output/ с параметрами: bit={bit}")

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    value = io.get_output(bit)
    return {"Status": "OK", "Bit": bit, "Value": value}

@app.get("/input")
def get_input(bit: int):
    """ Получить значение входа """
    logger.debug(f"Запрос /input/ с параметрами: bit={bit}")

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503    

    value = io.get_input(bit)
    return {"Status": "OK", "Bit": bit, "Value": value}

# Переменные
@app.get("/variables")
def get_variable_list():
    """ Получить список переменных """
    logger.debug("Запрос /variables")

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    variables = io.get_variable_list()
    return {"Status": "OK", "Variables": variables}

@app.post("/variable")
def set_variable(variable_name: str, value: int):
    """ Установить значение переменной """
    logger.debug(f"Запрос /variable с параметрами: variable_name={variable_name}, value={value}")

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    io.set_variable(variable_name, value)
    return {"Status": "OK", "Variable": variable_name, "Value": value}

@app.get("/variable")
def get_variable(variable_name: str):
    """ Получить значение переменной """
    logger.debug(f"Запрос /variable/ с параметрами: variable_name={variable_name}")

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    value = io.get_variable(variable_name)
    return {"Status": "OK", "Variable": variable_name, "Value": value}

# Массивом
@app.post("/outputs/all")
def set_all_outputs(outputs: Annotated[List[int], Literal[16]]):
    """ Установить все выходы """
    logger.debug("Запрос /outputs")

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    io.set_outputs(outputs)
    return {"Status": "OK", "Outputs": outputs}

@app.get("/outputs/all")
def get_all_outputs():
    """ Получить все выходы """
    logger.debug("Запрос /outputs")

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    outputs = [io.get_output(i) for i in range(16)]
    return {"Status": "OK", "Outputs": outputs}

@app.get("/inputs/all")
def get_all_inputs():
    """ Получить все входы """
    logger.debug("Запрос /inputs")

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503

    inputs = [io.get_input(i) for i in range(16)]
    return {"Status": "OK", "Inputs": inputs}

def tare_on_async():
    
    io.set_output(4, False)
    io.set_output(3, True)
    io.set_output(0, True)
    time.sleep(1)
    io.set_output(1, True)
    time.sleep(1)
    io.set_output(2, True)
    time.sleep(1)
    io.set_output(2, False)
    time.sleep(0.1)
    io.set_output(2, True)
    
def tare_off_async():
    io.set_output(4, False)
    io.set_output(3, True)
    io.set_output(2, False)
    time.sleep(1)
    io.set_output(1, False)
    time.sleep(1)
    io.set_output(0, False)

@app.post("/tare_on")
def tare_on():
    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503
    io.set_output(4, False)
    io.set_output(3, True)
    io.set_output(0, True)
    time.sleep(1)
    io.set_output(1, True)
    time.sleep(1)
    io.set_output(2, True)
    time.sleep(1)
    io.set_output(2, False)
    time.sleep(0.1)
    io.set_output(2, True)
    return {"Status": "OK"}


@app.post("/tare_off")
def tare_off():

    if io is None or not io.is_connected():
        logger.error("Модуль I/O не подключен")
        return {"Status": "ERROR",
                "Reason": "Not connected"}, 503
    io.set_output(4, False)
    io.set_output(3, True)
    io.set_output(2, False)
    time.sleep(1)
    io.set_output(1, False)
    time.sleep(1)
    io.set_output(0, False)
    return {"Status": "OK"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)