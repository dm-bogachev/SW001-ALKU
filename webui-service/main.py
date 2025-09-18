# Системные импорты
import os, time, sys, threading
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
from fastapi import FastAPI, Request
from fastapi.middleware.cors import CORSMiddleware
from fastapi.concurrency import asynccontextmanager
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles

# Внутренние модули
from common.Logger import config_logger
from common.Config import Config

logger = config_logger("webui-service/main.py")

@asynccontextmanager
async def lifespan(app: FastAPI):
    yield

app = FastAPI(
    root_path="/",
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


templates = Jinja2Templates(directory=os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates"))

# Mount static files directory
app.mount("/css", StaticFiles(directory=os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates", "css")), name="css")
app.mount("/js", StaticFiles(directory=os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates", "js")), name="js")
app.mount("/img", StaticFiles(directory=os.path.join(os.path.dirname(os.path.abspath(__file__)), "templates", "img")), name="img")

@app.get("/", response_class=HTMLResponse)
async def index (request: Request):
    logger.debug("Открываем главную страницу")
    return templates.TemplateResponse("index.html", {"request": request})

@app.get("/config")
async def get_config():
    config = Config()
    config.init()
    logger.debug("Получение конфигурации через /config")
    return config.get_config()



if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)