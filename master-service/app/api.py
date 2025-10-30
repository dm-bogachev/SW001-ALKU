
# Docker-aware API endpoint configuration (allow overrides via env vars)
WEBUI_API_URL = "http://webui-service:8000"
CAMERA_API_URL = "http://172.17.0.1:6500/api/camera"
STREAMING_API_URL = "http://streaming-service:8000/api/streaming"
CV_API_URL = "http://cv-service:8000/api/cv"
IO_API_URL = "http://io-service:8000/api/io"
RS0013N_API_URL = "http://rs013n-service:8000/api/rs013n"
RS007L_API_URL = "http://rs007l-service:8000/api/rs007l"
MASTER_API_URL = "http://master-service:8000/api/master"

API_HEALTH_MAP = {
    "webui": WEBUI_API_URL,
    "camera": CAMERA_API_URL,
    "streaming": STREAMING_API_URL,
    "cv": CV_API_URL,
    "io": IO_API_URL,
    "rs0013n": RS0013N_API_URL,
    "rs007l": RS007L_API_URL,
}

API_STATE_MAP = {
    "rs0013n:": RS0013N_API_URL,
    "rs007l": RS007L_API_URL,
    "io": IO_API_URL,
    "camera": CAMERA_API_URL,
}
