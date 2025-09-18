@echo off
call .\.venv\Scripts\activate
cd camera-service
uvicorn main:app --host 127.0.0.1 --port 8001
pause