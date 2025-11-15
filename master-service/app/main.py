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
from Background import Background
from DataCollector import DataCollector

from models import ProcessRequest, SensorState

logger = config_logger("master-service/main.py")

data_collector = DataCollector()
data_collector.start()

master = Background(data_collector)
master.start()

@asynccontextmanager
async def lifespan(app: FastAPIOffline):
    yield

app = FastAPIOffline(
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

@app.post("/master/start")
def start_process(request: ProcessRequest):
    """ Запуск процесса """
    logger.debug(f"Запрос /master/start ({request.ProductName}: {request.ProductCount}, {request.InTareIDs}, {request.OutTareIDs})")
    if not master.start_process(request.ProductName, request.ProductCount, request.InTareIDs, request.OutTareIDs):
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}    

@app.post("/master/sensor_state")
def set_sensor_state(request: SensorState):
    """ Получение информации  о статусе сенсоров"""
    valid_settings = ["stockerouttaresensor", 
                      "stockerintaresensor",
                      "outpalletsensor",
                      "defectpalletsensor",
                      "machinevacuum"]
    if request.SensorName.lower() not in valid_settings:
        return {"Status": "Failed", 
                "Code": -2,
                "Reason": "Wrong sensor name"
                }
    logger.debug(f"Запрос /master/sensor_state ({request.SensorName}: {request.State})")
    if not master.send_sensor_state(request.SensorName, request.State):
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}
    
@app.post("/master/measurement_result")
def set_measurement_result(result: bool):
    """ Получение результата измерений """
    logger.debug(f"Запрос /master/measurement_result")
    if not master.send_measurement_result(result):
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}

@app.post("/master/pause")
def pause_process():
    """ Пауза процесса """
    logger.debug("Запрос /master/pause")
    if not master.pause_process():
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}

@app.post("/master/resume")
def resume_process():
    """ Возобновление процесса """
    logger.debug("Запрос /master/resume")
    if not master.resume_process():
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}

@app.post("/master/stop")
def stop_process():
    """ Остановка процесса """
    logger.debug("Запрос /master/stop")
    if not master.stop_process():
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}

@app.post("/master/check_etalon")
def check_etalon(etalon_id: int):
    """ Проверка эталона """
    logger.debug("Запрос /master/check_etalon")
    if not master.check_etalon(etalon_id):
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}

@app.post("/master/set_speed")
def set_speed(speed: int):
    """ Установка скорости робота """
    logger.debug("Запрос /master/set_speed")
    if speed < 1 or speed > 100:
        return {"Status": "Failed",
                "Code": -2,
                "Reason": "Speed must be between 1 and 100"
                }
    if not master.set_speed(speed):
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}

@app.post("/master/debug/intare_sensor_ok")
def debug_intare_sensor_ok():
    """ Отладка: сигнал сенсора входных тар """
    logger.debug("Запрос /master/debug/intare_sensor_ok")
    if not master.debug_intare_sensor_ok():
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}

@app.post("/master/debug/outtare_sensor_ok")
def debug_outtare_sensor_ok():
    """ Отладка: сигнал сенсора выходных тар """
    logger.debug("Запрос /master/debug/outtare_sensor_ok")
    if not master.debug_outtare_sensor_ok():
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}

@app.post("/master/debug/pneumo_open")
def debug_pneumo_open():
    """ Отладка: сигнал пневматики """
    logger.debug("Запрос /master/debug/pneumo_open")
    if not master.debug_pneumo_open():
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}

@app.post("/master/debug/pneumo_close")
def debug_pneumo_close():
    """ Отладка: сигнал пневматики """
    logger.debug("Запрос /master/debug/pneumo_close")
    if not master.debug_pneumo_close():
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in sending to robot"
                }
    return {"Status": "OK"}


@app.get("/master/data")
def get_data():
    """ Получение собранных данных """
    logger.debug("Запрос /master/data")
    try:
        data = master.collector.get_data()
    except Exception as e:
        logger.error(f"Ошибка при получении данных: {e}")
        return {"Status": "Failed",
                "Code": -1,
                "Reason": "Error in getting data"
                }
    return {"Status": "OK",
            "Data": data
            }

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)

