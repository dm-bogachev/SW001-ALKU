FROM ultralytics/ultralytics:8.3.204

# Install CUDA toolkit and build dependencies for OpenCV with CUDA
RUN apt-get update && apt-get install -y \
    curl ffmpeg libsm6 libxext6 git wget \
    build-essential cmake pkg-config \
    libjpeg-dev libtiff5-dev libpng-dev \
    libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
    libxvidcore-dev libx264-dev \
    libgtk-3-dev \
    libatlas-base-dev gfortran \
    python3-dev \
    gnupg2 ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install NVIDIA CUDA Toolkit
RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb && \
    dpkg -i cuda-keyring_1.1-1_all.deb && \
    rm cuda-keyring_1.1-1_all.deb && \
    apt-get update && \
    apt-get install -y cuda-toolkit-12-6 libcudnn9-cuda-12 libcudnn9-dev-cuda-12 && \
    rm -rf /var/lib/apt/lists/*

ENV PATH=/usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH}

# Build OpenCV with CUDA support
ENV OPENCV_VERSION=4.10.0
# Download OpenCV and OpenCV contrib
RUN cd /tmp && \
    wget -q https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.tar.gz && \
    wget -q https://github.com/opencv/opencv_contrib/archive/${OPENCV_VERSION}.tar.gz -O opencv_contrib.tar.gz

# Extract OpenCV and OpenCV contrib
RUN cd /tmp && \
    tar -xzf ${OPENCV_VERSION}.tar.gz && \
    tar -xzf opencv_contrib.tar.gz

# # Конфигурация OpenCV с CUDA
# RUN cd /tmp/opencv-${OPENCV_VERSION} && \
#     mkdir -p build && cd build && \
#     cmake -D CMAKE_BUILD_TYPE=RELEASE \
#         -D CMAKE_INSTALL_PREFIX=/usr/local \
#         -D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv_contrib-${OPENCV_VERSION}/modules \
#         # Включаем только CUDA и необходимые модули
#         -D WITH_CUDA=ON \
#         -D WITH_CUDNN=ON \
#         -D OPENCV_DNN_CUDA=ON \
#         -D ENABLE_FAST_MATH=1 \
#         -D CUDA_FAST_MATH=1 \
#         -D CUDA_ARCH_BIN="7.5,8.0,8.6,8.9,9.0" \
#         -D WITH_CUBLAS=1 \
#         # Python биндинги
#         -D BUILD_opencv_python3=ON \
#         -D PYTHON3_EXECUTABLE=$(which python3) \
#         -D PYTHON3_INCLUDE_DIR=$(python3 -c "from sysconfig import get_paths; print(get_paths()['include'])") \
#         -D PYTHON3_PACKAGES_PATH=$(python3 -c "from sysconfig import get_paths; print(get_paths()['purelib'])") \
#         -D PYTHON3_NUMPY_INCLUDE_DIRS=$(python3 -c "import numpy; print(numpy.get_include())") \
#         # Отключаем всё лишнее
#         -D BUILD_TESTS=OFF \
#         -D BUILD_PERF_TESTS=OFF \
#         -D BUILD_EXAMPLES=OFF \
#         -D INSTALL_PYTHON_EXAMPLES=OFF \
#         -D INSTALL_C_EXAMPLES=OFF \
#         -D BUILD_DOCS=OFF \
#         -D BUILD_opencv_python_bindings_generator=ON \
#         ..

# # Compile OpenCV (use 12 cores)
# RUN cd /tmp/opencv-${OPENCV_VERSION}/build && \
#     make -j12

# # Install OpenCV
# RUN cd /tmp/opencv-${OPENCV_VERSION}/build && \
#     make install && \
#     ldconfig

# # Cleanup
# RUN rm -rf /tmp/opencv*

WORKDIR /cv

COPY ./cv-service/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]