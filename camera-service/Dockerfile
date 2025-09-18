FROM python:3.9-slim
RUN apt-get update && apt-get install -y curl ffmpeg libsm6 libxext6
WORKDIR /camera

COPY ./camera-service/MvCamCtrlSDK_Runtime-4.5.0_x86_64_20241128.deb /tmp/MvCamCtrlSDK_Runtime.deb
RUN dpkg -i /tmp/MvCamCtrlSDK_Runtime.deb || apt-get install -f -y && rm /tmp/MvCamCtrlSDK_Runtime.deb
ENV MVCAM_COMMON_RUNENV=/opt/MVS/lib LD_LIBRARY_PATH=/opt/MVS/lib/64:/opt/MVS/lib/32:$LD_LIBRARY_PATH

COPY ./camera-service/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY ./camera-service .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]