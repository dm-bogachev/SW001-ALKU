import cv2
import numpy as np
# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Logger import config_logger
logger = config_logger("proc_0401.17.02.023.py")

def process(frame, yolo_data):
    process_frame = frame.copy()
    draw_frame = frame.copy()
    process_frame = cv2.cvtColor(process_frame, cv2.COLOR_BGR2GRAY)
    result = []
    for data in yolo_data:
        x1, y1, x2, y2 = data.xyxy
        center = (x1 + x2) / 2, (y1 + y2) / 2
        data.pick_point = center
        #logger.debug(f"Ключевые точки: {data.keypoints}")
        if data.keypoints[0][1] < data.keypoints[1][1]:
            data.pick_angle = 180
            data.pick_point = (data.pick_point[0], data.pick_point[1] - (0.6)*abs(data.keypoints[0][1] - data.keypoints[1][1]))
        else:
            data.pick_angle = 0
            data.pick_point = (data.pick_point[0], data.pick_point[1] + (0.6)*abs(data.keypoints[0][1] - data.keypoints[1][1]))
        #logger.debug(f"Угол забора: {data.pick_angle}")
        result.append(data)
                
    return draw_frame, result