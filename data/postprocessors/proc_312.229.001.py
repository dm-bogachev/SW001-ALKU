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

def process(frame, yolo_data: list):
    result = []
    drawframe = frame.copy()
    for data in yolo_data:
        x1, y1, x2, y2 = data.xyxy
        if data.class_id == 0:
            cv2.rectangle(drawframe, (int(x1), int(y1)), (int(x2), int(y2)), (255, 233, 255), 2)
            continue    
        
        center = (x1 + x2) / 2, (y1 + y2) / 2
        data.pick_point = center
        data.pick_angle = 0#__get_gripper_angle(data, yolo_data)
        result.append(data)
        # frame = cv2.circle(frame, (int(center[0]), int(center[1])), int(abs(x1-x2)), (0, 255, 0), 2)
    return drawframe, result

def __check_intersection(line1, line2):
        x11, y11, x12, y12 = line1
        x21, y21, x22, y22 = line2
        # Equation of line 1: a1*x + b1*y + c1 = 0
        a1 = y11 - y12
        b1 = x12 - x11
        c1 = x11 * y12 - x12 * y11
        # Equation of line 2: a2*x + b2*y + c2 = 0
        a2 = y21 - y22
        b2 = x22 - x21
        c2 = x21 * y22 - x22 * y21

        # Determinant
        det = a1 * b2 - a2 * b1
        if det == 0:
            return None
        else:
            x = (b1 * c2 - b2 * c1) / det
            y = (a2 * c1 - a1 * c2) / det
            if min(x11, x12) < x < max(x11, x12) and min(y11, y12) < y < max(y11, y12) and \
               min(x21, x22) < x < max(x21, x22) and min(y21, y22) < y < max(y21, y22):
                return True
            else:
                return False

def __get_gripper_angle(selected_object, objects):
    gt2 = 14
    gl2 = 28
    bb_lines = []   
    logger.info("Checking 0 angle")
    # Get all lines on screen
    for obj in objects:
        if obj == selected_object:
            continue
        xmin, ymin, xmax, ymax = obj.xyxy
        lines = (
            (xmin, ymin, xmax, ymax),
            (xmin, ymin, xmin, ymax),
            (xmax, ymax, xmax, ymin),
            (xmax, ymax, xmin, ymax)
        )
        for line in lines:
            bb_lines.append(line)
    # Get basic line
    x0, y0, _ = selected_object.pick_point
    gripper_lines = (
        (x0*10 - gl2, y0*10 - gt2, x0*10 + gl2, y0*10 - gt2),
        (x0*10 - gl2, y0*10 + gt2, x0*10 + gl2, y0*10 + gt2)
    )
    intersection = False
    for line in gripper_lines:
        for bb_line in bb_lines:
            if __check_intersection(line, bb_line):
                intersection = True
    # If crossing, get new angle
    new_angle = -1
    angles = [90, -45, 45, -60, 60, -30, 30]
    if intersection:
        logger.info("Intersection found")
        for angle in angles:
            logger.info(f"Checking {angle} angle")
            # Get new coordinates
            glinex11, gliney11 = __rotate_point(
                (x0, y0), (x0*10 - gl2, y0*10 - gt2), angle)
            glinex12, gliney12 = __rotate_point(
                (x0, y0), (x0*10 + gl2, y0*10 - gt2), angle)
            glinex21, gliney21 = __rotate_point(
                (x0, y0), (x0*10 - gl2, y0*10 + gt2), angle)
            glinex22, gliney22 = __rotate_point(
                (x0, y0), (x0*10 + gl2, y0*10 + gt2), angle)
            gripper_lines = (
                (glinex11, gliney11, glinex12, gliney12),
                (glinex21, gliney21, glinex22, gliney22)
            )
            intersection = False
            for line in gripper_lines:
                for bb_line in bb_lines:
                    if __check_intersection(line, bb_line):
                        intersection = True
            if not intersection:
                new_angle = angle
                logger.info("Success")
                return new_angle
            logger.info("Intersection found")
    else:
        return 0
    
def __rotate_point(center, point, angle):
    cx, cy = center
    px, py = point
    # Convert angle to radians
    angle_rad = angle * (3.141592653589793 / 180.0)
    # Translate point to origin
    temp_x = px - cx
    temp_y = py - cy
    # Rotate point
    rotated_x = temp_x * math.cos(angle_rad) - temp_y * math.sin(angle_rad)
    rotated_y = temp_x * math.sin(angle_rad) + temp_y * math.cos(angle_rad)
    # Translate point back
    new_x = rotated_x + cx
    new_y = rotated_y + cy
    return new_x, new_y