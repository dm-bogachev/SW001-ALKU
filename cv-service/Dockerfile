FROM ultralytics-opencv-cuda

WORKDIR /cv

COPY ./cv-service/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]