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
from IO import IO
from typing import Annotated, List, Literal

logger = config_logger("io-service/main.py")

io = IO()

@asynccontextmanager
async def lifespan(app: FastAPI):
    yield

app = FastAPI(
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

# API endpoints для IO операций

# Одиночные сигналы
@app.post("/output")
def set_output(bit: int, value: int):
    """ Установить значение выхода """
    logger.debug(f"Запрос /output/ с параметрами: bit={bit}, value={value}")
    io.set_output(bit, value)
    return {"Status": "OK", "Bit": bit, "Value": value}

@app.get("/output")
def get_output(bit: int):
    """ Получить значение выхода """
    logger.debug(f"Запрос /output/ с параметрами: bit={bit}")
    value = io.get_output(bit)
    return {"Status": "OK", "Bit": bit, "Value": value}

@app.get("/input")
def get_input(bit: int):
    """ Получить значение входа """
    logger.debug(f"Запрос /input/ с параметрами: bit={bit}")
    value = io.get_input(bit)
    return {"Status": "OK", "Bit": bit, "Value": value}

# Переменные
@app.get("/variables")
def get_variable_list():
    """ Получить список переменных """
    logger.debug("Запрос /variables")
    variables = io.get_variable_list()
    return {"Status": "OK", "Variables": variables}

@app.post("/variable")
def set_variable(variable_name: str, value: int):
    """ Установить значение переменной """
    logger.debug(f"Запрос /variable с параметрами: variable_name={variable_name}, value={value}")
    io.set_variable(variable_name, value)
    return {"Status": "OK", "Variable": variable_name, "Value": value}

@app.get("/variable")
def get_variable(variable_name: str):
    """ Получить значение переменной """
    logger.debug(f"Запрос /variable/ с параметрами: variable_name={variable_name}")
    value = io.get_variable(variable_name)
    return {"Status": "OK", "Variable": variable_name, "Value": value}

# Массивом
@app.post("/outputs/all")
def set_all_outputs(outputs: Annotated[List[int], Literal[8]]):
    """ Установить все выходы """
    logger.debug("Запрос /outputs")
    io.set_outputs(outputs)
    return {"Status": "OK", "Outputs": outputs}

@app.get("/outputs/all")
def get_all_outputs():
    """ Получить все выходы """
    logger.debug("Запрос /outputs")
    outputs = [io.get_output(i) for i in range(8)]
    return {"Status": "OK", "Outputs": outputs}

@app.get("/inputs/all")
def get_all_inputs():
    """ Получить все входы """
    logger.debug("Запрос /inputs")
    inputs = [io.get_input(i) for i in range(8)]
    return {"Status": "OK", "Inputs": inputs}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)