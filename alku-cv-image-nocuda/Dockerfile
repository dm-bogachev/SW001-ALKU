FROM python:3.13

# Установка зависимостей для OpenCV
RUN apt-get update && apt-get install -y \
    curl ffmpeg libsm6 libxext6 git wget \
    build-essential cmake pkg-config \
    libjpeg-dev libtiff5-dev libpng-dev \
    libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
    libxvidcore-dev libx264-dev \
    gnupg2 ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Сборка OpenCV без поддержки CUDA
ENV OPENCV_VERSION=4.10.0
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

