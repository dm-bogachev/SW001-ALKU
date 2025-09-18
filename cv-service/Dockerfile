#FROM ultralytics/ultralytics:latest-python
FROM python:3.9-slim

RUN apt-get update && apt-get install -y curl  ffmpeg libsm6 libxext6 git

RUN git clone https://github.com/ultralytics/ultralytics.git /ultralytics_src \
    && pip install -e /ultralytics_src
    
WORKDIR /cv

COPY ./cv-service/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./cv-service .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]