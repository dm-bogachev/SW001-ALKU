import os
import cv2
import numpy as np
from flask import Flask, render_template, Response, request, jsonify
from HikCamera import HikCamera
import json
from pathlib import Path
import logging
from threading import Thread
import time
import ctypes

logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger("DatasetGrabber")


app = Flask(__name__)

# Global variables
auto_exposure_enabled = False
auto_exposure_thread = None

def load_coefficients(path):
    """Загружает матрицу камеры и коэффициенты настроечного оптического дефекта."""
    data = np.load(path)
    cameraMatrix = data["cameraMatrix"]
    distCoeffs = data["distCoeffs"]
    logger.debug(f"Матрица камеры:\n{cameraMatrix}")
    logger.debug(f"Коэффициенты дисторсии:\n{distCoeffs.ravel()}")
    return cameraMatrix, distCoeffs

def undistort(frame):
    """Устранение дисторсии кадра."""
    if camera_matrix is not None and distortion_coeffs is not None:
        logger.debug("Корректировка кадра камеры")
        undistorted = cv2.undistort(frame, camera_matrix, distortion_coeffs)
    return undistorted

# Initialize camera
camera = HikCamera()
camera.open()
# Load calibration data if exists
try:
    script_dir = Path(__file__).resolve().parent
    os.chdir(script_dir)
    camera_matrix, distortion_coeffs = load_coefficients("distortion_coeffs.npz")
    calibration_matrix = np.load("calibration_matrix.npy")
    
    CALIBRATION_AVAILABLE = True
except:
    CALIBRATION_AVAILABLE = False

def process_frame(frame):
    if CALIBRATION_AVAILABLE:
        frame = undistort(frame)
        result = cv2.warpPerspective(frame, calibration_matrix, (4895, 2960))
        frame = result
        # h, w = frame.shape[:2]
        # newcameramtx, roi = cv2.getOptimalNewCameraMatrix(
        #     calibration_matrix, distortion_coeffs, (w,h), 1, (w,h))
        # frame = cv2.undistort(frame, calibration_matrix, distortion_coeffs, None, newcameramtx)
    return frame

def auto_exposure_loop():
    global auto_exposure_enabled
    while auto_exposure_enabled:
        try:
            current_exposure = ctypes.c_float(0.0)
            camera.MV_CC_GetFloatValue("ExposureTime", current_exposure)
            logger.debug(f"Текущее время экспозиции: {current_exposure} мс")
            time.sleep(1)
        except:
            auto_exposure_enabled = False
            break

def generate_frames():
    while True:
        frame = camera.get_frame()
        if frame is not None:
            frame = process_frame(frame)
            ret, buffer = cv2.imencode('.jpg', frame)
            frame = buffer.tobytes()
            yield (b'--frame\r\n'
                   b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/video_feed')
def video_feed():
    return Response(generate_frames(),
                    mimetype='multipart/x-mixed-replace; boundary=frame')

@app.route('/apply_exposure', methods=['POST'])
def apply_exposure():
    exposure = request.json.get('exposure')
    try:
        camera.set_exposure(int(exposure))
        return jsonify({'success': True})
    except Exception as e:
        return jsonify({'success': False, 'error': str(e)})

@app.route('/save_images', methods=['POST'])
def save_images():
    data = request.json
    base_name = data['baseName'].strip()
    exposures = data['exposures']
    light_level = data['lightLevel']
    aux_light = data['auxLight']
    
    # Validate base name
    if not base_name:
        return jsonify({'success': False, 'error': 'Base name cannot be empty'})
    
    # Check if there are any non-zero exposures
    valid_exposures = [exp for exp in exposures if exp != 0]
    if not valid_exposures:
        return jsonify({'success': False, 'error': 'At least one exposure value must be set'})
    
    # Create images directory if not exists
    Path('images').mkdir(exist_ok=True)
    save_dir = Path('images') / base_name
    save_dir.mkdir(exist_ok=True)
    
    saved_files = []
    for exp in valid_exposures:
        try:
            camera.set_exposure(int(exp))
            frame = camera.get_frame()
            if frame is not None:
                frame = process_frame(frame)
                filename = f'exp_{exp}_light_{light_level}_aux_{aux_light}.jpg'
                cv2.imwrite(str(save_dir / filename), frame)
                saved_files.append(filename)
            else:
                logger.warning(f"No frame captured for exposure {exp}")
        except Exception as e:
            logger.error(f"Error saving image with exposure {exp}: {str(e)}")
            return jsonify({'success': False, 'error': str(e)})
    
    if not saved_files:
        return jsonify({'success': False, 'error': 'No images were saved'})
    
    return jsonify({'success': True, 'saved_files': saved_files})

@app.route('/toggle_auto_exposure', methods=['POST'])
def toggle_auto_exposure():
    global auto_exposure_enabled, auto_exposure_thread
    
    state = request.json.get('enabled')
    try:
        if state:
            camera.MV_CC_SetEnumValue("ExposureAuto", 2)  # Continuous auto exposure
            auto_exposure_enabled = True
            auto_exposure_thread = Thread(target=auto_exposure_loop)
            auto_exposure_thread.daemon = True
            auto_exposure_thread.start()
        else:
            camera.MV_CC_SetEnumValue("ExposureAuto", 0)  # Manual exposure
            auto_exposure_enabled = False
            if auto_exposure_thread:
                auto_exposure_thread = None
        value = ctypes.c_float(0.0)
        camera.MV_CC_GetFloatValue("ExposureTime", value)
        return jsonify({
            'success': True, 
            'enabled': state,
            'current_exposure': value.value
        })
    except Exception as e:
        return jsonify({'success': False, 'error': str(e)})

@app.route('/get_current_exposure')
def get_current_exposure():
    try:
        value = ctypes.c_float(0.0)
        camera.MV_CC_GetFloatValue("ExposureTime", value)
        return jsonify({
            'success': True,
            'exposure': value.value
        })
    except Exception as e:
        return jsonify({'success': False, 'error': str(e)})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)