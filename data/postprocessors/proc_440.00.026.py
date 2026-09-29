import cv2
import numpy as np
# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Logger import config_logger
logger = config_logger("proc_440.00.026.py")
from common.Config import Config
Config.init()

def __check_allowance(point):
    x = point[0]
    if x < 275 or 1550 < x < 1725 or 3200 < x < 3375 or x > 4675:
        return False
    return True

def __get_allowed_area():
    model_config = Config.get("Models").copy().get("440.00.026")
    #
    defaultArea = model_config.get("ModelDefaultArea")
    areaDeviation = model_config.get("ModelAllowedAreaDeviation")
    minArea = defaultArea - areaDeviation
    maxArea = defaultArea + areaDeviation
    #
    return minArea, maxArea


def process(frame, yolo_data):
    minArea, maxArea = __get_allowed_area()
    process_frame = frame.copy()
    draw_frame = frame.copy()
    process_frame = cv2.cvtColor(process_frame, cv2.COLOR_BGR2GRAY)
    result = []
    for data in yolo_data:
        x1, y1, x2, y2 = data.xyxy
        center = (x1 + x2) / 2, (y1 + y2) / 2
        data.pick_point = center
        area = abs(x2-x1)*abs(y2-y1)

        # Определяем расширенный прямоугольник для текущей детали (уменьшенный на половину)
        width = (x2 - x1) / 2
        height = (y2 - y1) / 2
        rect_left = int(x1)# - 1.0*width)
        rect_right = int(x2)# + 1.0*width)
        rect_top = int(y1+0.1*height)#+0.0*height)
        rect_bottom = int(y2-0.1*height)#-0.0*height)
        
        # Проверяем, есть ли другие детали в этом прямоугольнике
        has_intersection = False
        for other_data in yolo_data:
            if other_data is data:  # Пропускаем саму деталь
                continue
            other_x1, other_y1, other_x2, other_y2 = other_data.xyxy
            # Проверяем пересечение: является ли центр или часть другой детали в нашем прямоугольнике
            other_center_x = (other_x1 + other_x2) / 2
            other_center_y = (other_y1 + other_y2) / 2
            # Проверяем пересечение прямоугольников
            if not (other_x2 < rect_left or other_x1 > rect_right or 
                    other_y2 < rect_top or other_y1 > rect_bottom):
                has_intersection = True

                # Если нет пересечений, добавляем в результат
        if not has_intersection:
            cv2.rectangle(draw_frame, (rect_left, rect_top), 
                        (rect_right, rect_bottom), (255, 255, 0), 2)
        else:
            cv2.rectangle(draw_frame, (rect_left, rect_top), 
                        (rect_right, rect_bottom), (255, 255, 0), 2)
            continue
        if not (minArea <= area <= maxArea):
            logger.debug(f"Area is out of bounds")
            cv2.rectangle(draw_frame, (int(x1), int(y1)), 
                        (int(x2), int(y2)), (255, 0, 255), 2)
            continue
        if not __check_allowance(data.pick_point):
            continue
        logger.debug(f"X:{data.pick_point[0]} Y:{data.pick_point[1]} Area: {area}")
        
        if data.keypoints[0][1] > data.keypoints[1][1]:
            data.pick_angle = 180
            data.pick_point = (data.pick_point[0], data.pick_point[1] - 0.4*abs(data.keypoints[0][1] - data.keypoints[1][1]))
        else:
            data.pick_angle = 0
            data.pick_point = (data.pick_point[0], data.pick_point[1] + 0.4*abs(data.keypoints[0][1] - data.keypoints[1][1]))
        logger.debug(f"Угол забора: {data.pick_angle}")
        result.append(data)
                
    return draw_frame, result