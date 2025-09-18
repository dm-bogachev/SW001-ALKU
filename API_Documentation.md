# API Documentation SW001-ALKU Project

## Table of Contents
1. [camera-service](#camera-service-apicamera)
2. [cv-service](#cv-service-apicv)
3. [io-service](#io-service-apiio)
4. [rs0013n-service](#rs0013n-service-apirs0013n)
5. [rs007l-service](#rs007l-service-apirs007l)
6. [streaming-service](#streaming-service-apistreaming)
7. [webui-service](#webui-service-)

## camera-service (/api/camera)

### 1. Health Check
**Endpoint:** `/api/camera/health`  
**Method:** `GET`  
**Description:** Проверка работоспособности сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK"
}```**curl Example:**```curl -X GET http://localhost/api/camera/health```
### 2. Reboot Service
**Endpoint:** `/api/camera/reboot`  
**Method:** `POST`  
**Description:** Перезагрузка сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "Reboot"
}```**curl Example:**```curl -X POST http://localhost/api/camera/reboot```
### 3. Set Exposure
**Endpoint:** `/api/camera/set_exposure`  
**Method:** `POST`  
**Description:** Установка значения экспозиции камеры Hikvision  
**Request Data:** ```json
{
  "exposure_value": 100
}```**Response:** ```json
{
  "Status": "OK",
  "ExposureValue": 100
}```**curl Example:**```curl -X POST http://localhost/api/camera/set_exposure \
  -H "Content-Type: application/json" \
  -d '{"exposure_value": 100}'```
### 4. Set Frame Interval
**Endpoint:** `/api/camera/set_frame_interval`  
**Method:** `POST`  
**Description:** Установка значения интервала кадров камеры Hikvision, сек  
**Request Data:** ```json
{
  "frame_interval": 0.1
}```**Response:** ```json
{
  "Status": "OK",
  "FrameInterval": 0.1
}```**curl Example:**```curl -X POST http://localhost/api/camera/set_frame_interval \
  -H "Content-Type: application/json" \
  -d '{"frame_interval": 0.1}'```
### 5. Save Frame
**Endpoint:** `/api/camera/save_frame`  
**Method:** `POST`  
**Description:** Сохранение текущего кадра камеры Hikvision  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "Filename": "/path/to/frame_2024_17_09_14_33_56.png"
}```**curl Example:**```curl -X POST http://localhost/api/camera/save_frame```

## cv-service (/api/cv)

### 1. Health Check
**Endpoint:** `/api/cv/health`  
**Method:** `GET`  
**Description:** Проверка работоспособности сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK"
}```**curl Example:**```curl -X GET http://localhost/api/cv/health```
### 2. Reboot Service
**Endpoint:** `/api/cv/reboot`  
**Method:** `POST`  
**Description:** Перезагрузка сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "Reboot"
}```**curl Example:**```curl -X POST http://localhost/api/cv/reboot```
### 3. Calibrate Camera
**Endpoint:** `/api/cv/calibrate`  
**Method:** `POST`  
**Description:** Калибровка камеры  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "Calibrated": true,
  "Origin": {...},
  "Size": {...},
  "Theta": {...}
}```**curl Example:**```curl -X POST http://localhost/api/cv/calibrate```
### 4. Uncalibrate Camera
**Endpoint:** `/api/cv/uncalibrate`  
**Method:** `POST`  
**Description:** Сброс калибровки камеры  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "Calibrated": false
}```**curl Example:**```curl -X POST http://localhost/api/cv/uncalibrate```
### 5. Get Models List
**Endpoint:** `/api/cv/get_models_list`  
**Method:** `GET`  
**Description:** Получение списка доступных моделей  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "Models": ["yolo11n.pt", "yolo11s.pt", "details_long_test.pt"]
}```**curl Example:**```curl -X GET http://localhost/api/cv/get_models_list```
### 6. Change Model
**Endpoint:** `/api/cv/change_model`  
**Method:** `POST`  
**Description:** Смена модели детектора  
**Request Data:** ```json
{
  "model_name": "yolo11n.pt"
}```**Response:** ```json
{
  "Status": "OK",
  "CurrentModel": "yolo11n.pt"
}```**curl Example:**```curl -X POST http://localhost/api/cv/change_model \
  -H "Content-Type: application/json" \
  -d '{"model_name": "yolo11n.pt"}'```
### 7. Get Current Model
**Endpoint:** `/api/cv/get_current_model`  
**Method:** `GET`  
**Description:** Получение текущей модели детектора  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "CurrentModel": "yolo11n.pt"
}```**curl Example:**```curl -X GET http://localhost/api/cv/get_current_model```
### 8. Set Processing Delay
**Endpoint:** `/api/cv/set_processing_delay`  
**Method:** `POST`  
**Description:** Установка задержки между обработкой кадров  
**Request Data:** ```json
{
  "delay": 0.1
}```**Response:** ```json
{
  "Status": "OK",
  "Delay": 0.1
}```**curl Example:**```curl -X POST http://localhost/api/cv/set_processing_delay \
  -H "Content-Type: application/json" \
  -d '{"delay": 0.1}'```
### 9. Add Model
**Endpoint:** `/api/cv/add_model`  
**Method:** `POST`  
**Description:** Добавление новой модели детектора  
**Request Data:** ```json
{
  "model_name": "new_model",
  "model_file_name": "model.pt",
  "confidence_threshold": 0.5,
  "model_type": "yolo",
  "processor_file": "processor.py"
}```**Response:** ```json
{
  "Status": "OK",
  "ModelName": "new_model",
  "ModelFileName": "model.pt",
  "ConfidenceThreshold": 0.5,
  "ModelType": "yolo",
  "ProcessorFile": "processor.py"
}```**curl Example:**```curl -X POST http://localhost/api/cv/add_model \
  -H "Content-Type: application/json" \
  -d '{"model_name": "new_model", "model_file_name": "model.pt", "confidence_threshold": 0.5, "model_type": "yolo", "processor_file": "processor.py"}'```
### 10. Set Model Threshold
**Endpoint:** `/api/cv/set_model_threshold`  
**Method:** `POST`  
**Description:** Изменение порога уверенности модели  
**Request Data:** ```json
{
  "model_name": "yolo11n.pt",
  "new_threshold": 0.7
}```**Response:** ```json
{
  "Status": "OK",
  "ModelName": "yolo11n.pt",
  "NewThreshold": 0.7
}```**curl Example:**```curl -X POST http://localhost/api/cv/set_model_threshold \
  -H "Content-Type: application/json" \
  -d '{"model_name": "yolo11n.pt", "new_threshold": 0.7}'```
### 11. Change Display Setting
**Endpoint:** `/api/cv/change_display_setting`  
**Method:** `POST`  
**Description:** Изменение настроек отображения  
**Request Data:** ```json
{
  "setting": "bbox",
  "value": true
}```**Response:** ```json
{
  "Status": "OK",
  "Setting": "bbox",
  "Value": true
}```**curl Example:**```curl -X POST http://localhost/api/cv/change_display_setting \
  -H "Content-Type: application/json" \
  -d '{"setting": "bbox", "value": true}'```
### 12. Get Objects
**Endpoint:** `/api/cv/get_objects`  
**Method:** `GET`  
**Description:** Получение объектов  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "Objects": [...]
}```**curl Example:**```curl -X GET http://localhost/api/cv/get_objects```
### 13. Get First Object
**Endpoint:** `/api/cv/get_first_object`  
**Method:** `GET`  
**Description:** Получение первого объекта  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "Object": {...}
}```**curl Example:**```curl -X GET http://localhost/api/cv/get_first_object```

## io-service (/api/io)

### 1. Health Check
**Endpoint:** `/api/io/health`  
**Method:** `GET`  
**Description:** Проверка работоспособности сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK"
}```**curl Example:**```curl -X GET http://localhost/api/io/health```
### 2. Reboot Service
**Endpoint:** `/api/io/reboot`  
**Method:** `POST`  
**Description:** Перезагрузка сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "Reboot"
}```**curl Example:**```curl -X POST http://localhost/api/io/reboot```
### 3. Set Output
**Endpoint:** `/api/io/output`  
**Method:** `POST`  
**Description:** Установить значение выхода  
**Request Data:** ```json
{
  "bit": 1,
  "value": 1
}```**Response:** ```json
{
  "Status": "OK",
  "Bit": 1,
  "Value": 1
}```**curl Example:**```curl -X POST http://localhost/api/io/output \
  -H "Content-Type: application/json" \
  -d '{"bit": 1, "value": 1}'```
### 4. Get Output
**Endpoint:** `/api/io/output`  
**Method:** `GET`  
**Description:** Получить значение выхода  
**Request Data:** Query parameter `bit`  
**Response:** ```json
{
  "Status": "OK",
  "Bit": 1,
  "Value": 1
}```**curl Example:**```curl -X GET "http://localhost/api/io/output?bit=1"```
### 5. Get Input
**Endpoint:** `/api/io/input`  
**Method:** `GET`  
**Description:** Получить значение входа  
**Request Data:** Query parameter `bit`  
**Response:** ```json
{
  "Status": "OK",
  "Bit": 1,
  "Value": 0
}```**curl Example:**```curl -X GET "http://localhost/api/io/input?bit=1"```
### 6. Get Variable List
**Endpoint:** `/api/io/variables`  
**Method:** `GET`  
**Description:** Получить список переменных  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "Variables": ["var1", "var2", ...]
}```**curl Example:**```curl -X GET http://localhost/api/io/variables```
### 7. Set Variable
**Endpoint:** `/api/io/variable`  
**Method:** `POST`  
**Description:** Установить значение переменной  
**Request Data:** ```json
{
  "variable_name": "var1",
  "value": 10
}```**Response:** ```json
{
  "Status": "OK",
  "Variable": "var1",
  "Value": 10
}```**curl Example:**```curl -X POST http://localhost/api/io/variable \
  -H "Content-Type: application/json" \
  -d '{"variable_name": "var1", "value": 10}'```
### 8. Get Variable
**Endpoint:** `/api/io/variable`  
**Method:** `GET`  
**Description:** Получить значение переменной  
**Request Data:** Query parameter `variable_name`  
**Response:** ```json
{
  "Status": "OK",
  "Variable": "var1",
  "Value": 10
}```**curl Example:**```curl -X GET "http://localhost/api/io/variable?variable_name=var1"```
### 9. Set All Outputs
**Endpoint:** `/api/io/outputs/all`  
**Method:** `POST`  
**Description:** Установить все выходы  
**Request Data:** Array of 8 integers  ```json
[1, 0, 1, 0, 1, 0, 1, 0]```**Response:** ```json
{
  "Status": "OK",
  "Outputs": [1, 0, 1, 0, 1, 0, 1, 0]
}```**curl Example:**```curl -X POST http://localhost/api/io/outputs/all \
  -H "Content-Type: application/json" \
  -d '[1,0,1,0,1,0,1,0]'```
### 10. Get All Outputs
**Endpoint:** `/api/io/outputs/all`  
**Method:** `GET`  
**Description:** Получить все выходы  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "Outputs": [1, 0, 1, 0, 1, 0, 1, 0]
}```**curl Example:**```curl -X GET http://localhost/api/io/outputs/all```
### 11. Get All Inputs
**Endpoint:** `/api/io/inputs/all`  
**Method:** `GET`  
**Description:** Получить все входы  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "Inputs": [0, 1, 0, 1, 0, 1, 0, 1]
}```**curl Example:**```curl -X GET http://localhost/api/io/inputs/all```

## rs0013n-service (/api/rs0013n)

### 1. Health Check
**Endpoint:** `/api/rs0013n/health`  
**Method:** `GET`  
**Description:** Проверка работоспособности сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK"
}```**curl Example:**```curl -X GET http://localhost/api/rs0013n/health```
### 2. Reboot Service
**Endpoint:** `/api/rs0013n/reboot`  
**Method:** `POST`  
**Description:** Перезагрузка сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "Reboot"
}```**curl Example:**```curl -X POST http://localhost/api/rs0013n/reboot```
### 3. Get Robot Status
**Endpoint:** `/api/rs0013n/status`  
**Method:** `GET`  
**Description:** Получение статуса робота  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "RobotStatus": {
    "battery": "85%",
    "position": {
      "x": 10,
      "y": 5
    },
    "is_moving": false
  }
}```**curl Example:**```curl -X GET http://localhost/api/rs0013n/status```
### 4. Send Command
**Endpoint:** `/api/rs0013n/send_command`  
**Method:** `POST`  
**Description:** Отправка команды на выполнение  
**Request Data:** ```json
{
  "command": "move_forward"
}```**Response:** ```json
{
  "Status": "Command sent",
  "Command": "move_forward"
}```**curl Example:**```curl -X POST http://localhost/api/rs0013n/send_command \
  -H "Content-Type: application/json" \
  -d '{"command": "move_forward"}'```

## rs007l-service (/api/rs007l)

### 1. Health Check
**Endpoint:** `/api/rs007l/health`  
**Method:** `GET`  
**Description:** Проверка работоспособности сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK"
}```**curl Example:**```curl -X GET http://localhost/api/rs007l/health```
### 2. Reboot Service
**Endpoint:** `/api/rs007l/reboot`  
**Method:** `POST`  
**Description:** Перезагрузка сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "Reboot"
}```**curl Example:**```curl -X POST http://localhost/api/rs007l/reboot```
### 3. Get Robot Status
**Endpoint:** `/api/rs007l/status`  
**Method:** `GET`  
**Description:** Получение статуса робота  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "RobotStatus": {
    "battery": "85%",
    "position": {
      "x": 10,
      "y": 5
    },
    "is_moving": false
  }
}```**curl Example:**```curl -X GET http://localhost/api/rs007l/status```
### 4. Send Command
**Endpoint:** `/api/rs007l/send_command`  
**Method:** `POST`  
**Description:** Отправка команды на выполнение  
**Request Data:** ```json
{
  "command": "move_forward"
}```**Response:** ```json
{
  "Status": "Command sent",
  "Command": "move_forward"
}```**curl Example:**```curl -X POST http://localhost/api/rs007l/send_command \
  -H "Content-Type: application/json" \
  -d '{"command": "move_forward"}'```

## streaming-service (/api/streaming)

### 1. Health Check
**Endpoint:** `/api/streaming/health`  
**Method:** `GET`  
**Description:** Проверка работоспособности сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK"
}```**curl Example:**```curl -X GET http://localhost/api/streaming/health```
### 2. Reboot Service
**Endpoint:** `/api/streaming/reboot`  
**Method:** `POST`  
**Description:** Перезагрузка сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "Reboot"
}```**curl Example:**```curl -X POST http://localhost/api/streaming/reboot```
### 3. Video Stream
**Endpoint:** `/api/streaming/stream`  
**Method:** `GET`  
**Description:** Эндпоинт для MJPEG потока  
**Request Data:** None  
**Response:** MJPEG stream  
**curl Example:**```curl -X GET http://localhost/api/streaming/stream```
### 4. Set FPS
**Endpoint:** `/api/streaming/set_fps`  
**Method:** `POST`  
**Description:** Установить частоту кадров для стриминга  
**Request Data:** ```json
{
  "fps": 24.0
}```**Response:** ```json
{
  "Status": "OK",
  "FPS": 24.0
}```**curl Example:**```curl -X POST http://localhost/api/streaming/set_fps \
  -H "Content-Type: application/json" \
  -d '{"fps": 24.0}'```
### 5. Stream Camera Frame
**Endpoint:** `/api/streaming/stream_camera_frame`  
**Method:** `POST`  
**Description:** Установить ключ Redis для стриминга кадра камеры  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "DisplayedFrame": "REDIS_CAMERA_FRAME_KEY"
}```**curl Example:**```curl -X POST http://localhost/api/streaming/stream_camera_frame```
### 6. Stream Processed Frame
**Endpoint:** `/api/streaming/stream_processed_frame`  
**Method:** `POST`  
**Description:** Установить ключ Redis для стриминга обработанного кадра  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK",
  "DisplayedFrame": "REDIS_PROCESSED_FRAME_KEY"
}```**curl Example:**```curl -X POST http://localhost/api/streaming/stream_processed_frame```

## webui-service (/)

### 1. Health Check
**Endpoint:** `/health`  
**Method:** `GET`  
**Description:** Проверка работоспособности сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "OK"
}```**curl Example:**```curl -X GET http://localhost/health```
### 2. Reboot Service
**Endpoint:** `/reboot`  
**Method:** `POST`  
**Description:** Перезагрузка сервиса  
**Request Data:** None  
**Response:** ```json
{
  "Status": "Reboot"
}```**curl Example:**```curl -X POST http://localhost/reboot```
### 3. Main Page
**Endpoint:** `/`  
**Method:** `GET`  
**Description:** Главная страница веб-интерфейса  
**Request Data:** None  
**Response:** HTML страница  
**curl Example:**```curl -X GET http://localhost/```
### 4. Get Configuration
**Endpoint:** `/config`  
**Method:** `GET`  
**Description:** Получение конфигурации  
**Request Data:** None  
**Response:** Конфигурация в формате JSON  
**curl Example:**```curl -X GET http://localhost/config```
### 5. Static Files
**Endpoint:** `/css/`, `/js/`, `/img/`  
**Method:** `GET`  
**Description:** Статические файлы (CSS, JavaScript, изображения)  
**Request Data:** None  
**Response:** Статические файлы  
**curl Example:**```curl -X GET http://localhost/css/style.css
curl -X GET http://localhost/js/main.js
curl -X GET http://localhost/img/logo.png```

## Summary

**Total Services:** 9  
**Total API Endpoints:** 54  

### Service Breakdown:
- **camera-service:** 5 endpoints
- **cv-service:** 13 endpoints  
- **io-service:** 11 endpoints
- **rs0013n-service:** 4 endpoints
- **rs007l-service:** 4 endpoints
- **streaming-service:** 6 endpoints
- **webui-service:** 5 endpoints

### Common Endpoints:
All services include standard `/health` (GET) and `/reboot` (POST) endpoints for service monitoring and management.

### Default Configuration:
- Services use different root paths for API endpoints
- CORS is enabled for all origins
- All responses are in JSON format (except webui-service static files and HTML)

---
*Generated on: 2025-09-17*  
*Project: SW001-ALKU*
