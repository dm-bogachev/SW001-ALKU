FROM ultralytics/ultralytics:8.3.204
RUN apt-get update && apt-get install -y curl  ffmpeg libsm6 libxext6 git

WORKDIR /cv

COPY ./cv-service/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]