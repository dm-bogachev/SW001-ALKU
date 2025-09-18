import cv2
import numpy as np
# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Logger import config_logger
logger = config_logger("LongDetailsProcessor.py")

def process(frame, yolo_data):
    process_frame = frame.copy()
    draw_frame = frame.copy()
    process_frame = cv2.cvtColor(process_frame, cv2.COLOR_BGR2GRAY)
    result = []
    for data in yolo_data:
        x1, y1, x2, y2 = data.xyxy
        center = (x1 + x2) / 2, (y1 + y2) / 2
        data.pick_point = center
        result.append(data)
        data.pick_angle = 0
        # draw_frame = cv2.circle(draw_frame, (int(center[0]), int(center[1])), int(abs(x1-x2)), (0, 255, 0), 2)
        
        

        # # найди все контуры
        # contours, _ = cv2.findContours(process_frame, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)
        # # нарисуй все контуры
        # logger.debug(f"Количество контуров: {len(contours)}")
        # for contour in contours:
        #     cv2.drawContours(draw_frame, [contour], -1, (0, 255, 0), 2)
        
        
        
    return draw_frame, result