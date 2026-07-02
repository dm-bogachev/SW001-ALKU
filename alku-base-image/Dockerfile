FROM python:3.13

RUN apt-get update && apt-get install -y libgl1 libglib2.0-0 && rm -rf /var/lib/apt/lists/*
COPY MvCamCtrlSDK_Runtime-4.5.0_x86_64_20241128.deb /tmp/MvCamCtrlSDK_Runtime.deb
RUN dpkg -i /tmp/MvCamCtrlSDK_Runtime.deb || apt-get install -f -y && rm /tmp/MvCamCtrlSDK_Runtime.deb
ENV MVCAM_COMMON_RUNENV=/opt/MVS/lib LD_LIBRARY_PATH=/opt/MVS/lib/64:/opt/MVS/lib/32:$LD_LIBRARY_PATH

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt