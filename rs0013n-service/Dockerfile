FROM python:3.9-slim
RUN apt-get update && apt-get install -y curl ffmpeg libsm6 libxext6
WORKDIR /rs0013n

COPY ./rs0013n-service/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY ./rs0013n-service .

# EXPOSE 8080
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]