import math
import cv2
import numpy as np
# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Logger import config_logger
logger = config_logger("proc_312.229.001.py")
from common.Config import Config
Config.init()


def __check_allowance(point):
    x = point[0]
    if x < 275 or 1550 < x < 1725 or 3200 < x < 3375 or x > 4675:
        return False
    return True


def __get_allowed_area():
    model_config = Config.get("Models").copy().get("312.229.002")
    #
    defaultArea = model_config.get("ModelDefaultArea")
    areaDeviation = model_config.get("ModelAllowedAreaDeviation")
    minArea = defaultArea - areaDeviation
    maxArea = defaultArea + areaDeviation
    #
    return minArea, maxArea

def process(frame, yolo_data: list):
    minArea, maxArea = __get_allowed_area()
    result = []
    draw_frame = frame.copy()
    for data in yolo_data:
        x1, y1, x2, y2 = data.xyxy
        if data.class_id == 0:
            cv2.putText(draw_frame, 
                          f"P: {data.conf:.2f}",
                          (int(x1), int(y1)),
                          cv2.FONT_HERSHEY_SIMPLEX,
                          1,
                          (0,0,255),
                          2)
            cv2.rectangle(draw_frame, (int(x1), int(y1)), (int(x2), int(y2)), (0, 0, 255), 2)
            #continue    
        #cv2.line(frame, (x1, y1), (x1-(x2-x1), y1), (0,255,0), 3, 3)
        
        area = abs(x2-x1)*abs(y2-y1)
        
        # Определяем расширенный прямоугольник для текущей детали (уменьшенный на половину)
        width = (x2 - x1) / 2
        height = (y2 - y1) / 2
        rect_left = int(x1 - 0.9*width)
        rect_right = int(x2 + 0.9*width)
        rect_top = int(y1+0.1*height)
        rect_bottom = int(y2-0.1*height)
        
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
                # Есть пересечение - подсвечиваем фиолетовым
                if data.class_id != 0:
                    cv2.rectangle(draw_frame, (int(other_x1), int(other_y1)), 
                                (int(other_x2), int(other_y2)), (255, 0, 255), 2)
                has_intersection = True
        

        # Если нет пересечений, добавляем в результат
        if not has_intersection:
            if data.class_id != 0:
                cv2.line(draw_frame, (rect_left, rect_top), (rect_right, rect_top), (0, 255, 0), 5)
                cv2.line(draw_frame, (rect_left, rect_bottom), (rect_right, rect_bottom), (0, 255, 0), 5)
            else:
                cv2.line(draw_frame, (rect_left, rect_top), (rect_right, rect_top), (0, 0, 255), 5)
                cv2.line(draw_frame, (rect_left, rect_bottom), (rect_right, rect_bottom), (0, 0, 255), 5)
            center = (x1 + x2) / 2, (y1 + y2) / 2
            data.pick_point = center
            if not __check_allowance(data.pick_point):
                continue
            logger.debug(f"X:{data.pick_point[0]} Y:{data.pick_point[1]} Area: {area}")
        
            data.pick_angle = 0
            if area < 15000 or area > 40000:
                continue
            if data.class_id != 0:
                result.append(data)
        else:
            cv2.line(draw_frame, (rect_left, rect_top), (rect_right, rect_top), (0, 0, 255), 5)
            cv2.line(draw_frame, (rect_left, rect_bottom), (rect_right, rect_bottom), (0, 0, 255), 5)
            # frame = cv2.circle(frame, (int(center[0]), int(center[1])), int(abs(x1-x2)), (0, 255, 0), 2)
    return draw_frame, result
