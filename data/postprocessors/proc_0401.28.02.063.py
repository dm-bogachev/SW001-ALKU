import cv2
import numpy as np
# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Logger import config_logger
logger = config_logger("proc_0401.28.02.063.py")
from common.Config import Config
Config.init()

def __check_allowance(point):
    x = point[0]
    if x < 275 or 1550 < x < 1725 or 3200 < x < 3375 or x > 4675:
        return False
    return True


def __get_allowed_width():
    model_config = Config.get("Models").copy().get("0401.28.02.063")
    #
    defaultWidth = model_config.get("ModelDefaultWidth")
    widthDeviation = model_config.get("ModelAllowedWidthDeviation")
    minWidth = defaultWidth - widthDeviation
    maxWidth = defaultWidth + widthDeviation
    #
    return minWidth, maxWidth

def process(frame, yolo_data):
    minWidth, maxWidth = __get_allowed_width()
    allowedWidth = (minWidth + maxWidth)/2
    process_frame = frame.copy()
    draw_frame = frame.copy()
    process_frame = cv2.cvtColor(process_frame, cv2.COLOR_BGR2GRAY)
    result = []
    for data in yolo_data:
        valid_data = True
        # BBox data
        x1, y1, x2, y2 = data.xyxy
        width = abs(x2 - x1)
        height = abs(y2 - y1)
        center = (x1 + x2) / 2, (y1 + y2) / 2
        area = width*height

        # Pick point data
        data.pick_point = center
        if data.keypoints[0][1] > data.keypoints[1][1]:
            data.pick_angle = 180
            data.pick_point = (data.pick_point[0], data.pick_point[1] - 0.2*abs(data.keypoints[0][1] - data.keypoints[1][1]))
        else:
            data.pick_angle = 0
            data.pick_point = (data.pick_point[0], data.pick_point[1] + 0.5*abs(data.keypoints[0][1] - data.keypoints[1][1]))
        pp = data.pick_point

        # Pick zone
        pz_x1 = int(pp[0] - 1.2*width/2)
        pz_x2 = int(pp[0] + 1.2*width/2)
        pz_y1 = int(pp[1] - 0.4*height/2)
        pz_y2 = int(pp[1] + 0.4*height/2)

        # Draw pick zone
        cv2.rectangle(draw_frame, (pz_x1, pz_y1), 
                        (pz_x2, pz_y2), (255, 255, 0), 2)
        
        # Check intersection
        intersection = False
        for _data in yolo_data:
            if _data is data:  
                continue
            _x1, _y1, _x2, _y2 = _data.xyxy
            if not (_x2 < pz_x1 or _x1 > pz_x2 or 
                    _y2 < pz_y1 or _y1 > pz_y2):
                intersection = True

        if intersection:
            valid_data = False
            logger.debug(f"В зоне захвата объекта с координатами X:{center[0]} Y:{center[1]} находится другой объект")
            cv2.rectangle(draw_frame, (int(x1), int(y1)), 
                        (int(x2), int(y2)), (0, 255, 255), 2)

        if not (minWidth <= width <= maxWidth):
            logger.debug(f"{minWidth},{width},{maxWidth}, {allowedWidth}")
            logger.debug(f"Размер объекта с координатами X:{center[0]} Y:{center[1]} за границей диапазона размеров")
            cv2.rectangle(draw_frame, (int(x1), int(y1)), 
                        (int(x2), int(y2)), (255, 0, 255), 2)
            cv2.line(draw_frame, (int(center[0] - allowedWidth/2), int(y2)), 
                        (int(center[0] + allowedWidth/2), int(y2)), (255, 255, 255), 4)
            valid_data = False
        
        if not __check_allowance(center):
            logger.debug(f"Объект с координатами X:{center[0]} Y:{center[1]} находится в запрещённой для взятия зоне")
            cv2.rectangle(draw_frame, (int(x1), int(y1)), 
                        (int(x2), int(y2)), (0, 255, 255), 2)
            valid_data = False

        if valid_data:
            logger.debug(f"Объект с координатами X:{center[0]} Y:{center[1]} A:{data.pick_angle} является кандидатом для захвата")
            result.append(data)
                
    return draw_frame, result