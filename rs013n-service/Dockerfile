FROM python:3.9-slim
RUN apt-get update && apt-get install -y curl ffmpeg libsm6 libxext6
WORKDIR /rs013n

COPY ./rs013n-service/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 9013

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]