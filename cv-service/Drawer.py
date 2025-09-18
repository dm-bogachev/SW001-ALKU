from YoloData import YoloData
import sys
import os

parent_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
sys.path.append(parent_dir)
from common.Logger import config_logger
from common.Colors import *
from common.Config import Config

import cv2

logger = config_logger("cv-service/Drawer.py")


class Drawer:

    def __init__(self):
        self.__bbox = Config.get("Display.BBOX", True)
        self.__labels = Config.get("Display.LABELS", True)
        self.__scores = Config.get("Display.SCORES", True)
        self.__points = Config.get("Display.POINTS", True)
        self.__keypoints = Config.get("Display.KEYPOINTS", True)
        self.__coordinates = Config.get("Display.COORDINATES", True)
        self.__pick_angle = Config.get("Display.PICK_ANGLE", True)

        self.__itershift = -5

        self.__colors = [
            COLOR_GREEN,
            COLOR_YELLOW,
            COLOR_BLUE,
            COLOR_CYAN,
            COLOR_ORANGE,
            COLOR_MAGENTA,
            COLOR_RED,
        ]

    def __draw_bbox(self, frame, data):
        if self.__bbox:
            x1, y1, x2, y2 = data.xyxy
            id = int(data.class_id)
            color = self.__colors[id % len(self.__colors)]
            cv2.rectangle(frame, (int(x1), int(y1)), (int(x2), int(y2)), color, 2)

    def __draw_scores(self, frame, data):
        if self.__scores:
            x1, y1, x2, y2 = data.xyxy
            id = int(data.class_id)
            color = self.__colors[id % len(self.__colors)]
            cv2.putText(
                frame,
                f"{data.conf:.2f}",
                (int(x1), int(y1) + self.__itershift),
                cv2.FONT_HERSHEY_SIMPLEX,
                1,
                color,
                2,
            )
            self.__itershift -= 30

    def __draw_labels(self, frame, data):
        if self.__labels:
            x1, y1, x2, y2 = data.xyxy
            id = int(data.class_id)
            color = self.__colors[id % len(self.__colors)]
            cv2.putText(
                frame,
                data.class_name,
                (int(x1), int(y1) + self.__itershift),
                cv2.FONT_HERSHEY_SIMPLEX,
                1,
                color,
                2,
            )
            self.__itershift -= 30

    def __draw_points(self, frame, data):
        if self.__points:
            x1, y1, x2, y2 = data.xyxy
            id = int(data.class_id)
            if data.pick_point:
                cv2.circle(
                    frame,
                    (int(data.pick_point[0]), int(data.pick_point[1])),
                    5,
                    self.__colors[id % len(self.__colors)],
                    -1,
                )

    def __draw_keypoints(self, frame, data):
        if self.__keypoints:
            x1, y1, x2, y2 = data.xyxy
            color = 2
            if data.keypoints:
                for point in data.keypoints:
                    cv2.circle(
                        frame,
                        (int(point[0]), int(point[1])),
                        5,
                        self.__colors[color % len(self.__colors)],
                        -1,
                    )
                    color += 1

    def __draw_pick_angle(self, frame, data):
        if self.__pick_angle:
            x1, y1, x2, y2 = data.xyxy
            id = int(data.class_id)
            if data.pick_angle is not None:
                cv2.putText(
                    frame,
                    f"a: {data.pick_angle:.2f}",
                    (int(x1), int(y1) + self.__itershift),
                    cv2.FONT_HERSHEY_SIMPLEX,
                    1,
                    self.__colors[int(data.class_id) % len(self.__colors)],
                    2,
                )
                self.__itershift -= 30

    def __draw_coordinates(self, frame, data):
        if self.__coordinates:

            scale_x = Config.get("CalibrationData.ScaleX", 1.0)
            scale_y = Config.get("CalibrationData.ScaleY", 1.0)

            x1, y1, x2, y2 = data.xyxy
            id = int(data.class_id)
            if data.pick_point:
                cv2.putText(
                    frame,
                    f"Y: {data.pick_point[1]*scale_y:.2f}",
                    (int(x1), int(y1) + self.__itershift),
                    cv2.FONT_HERSHEY_SIMPLEX,
                    1,
                    self.__colors[id % len(self.__colors)],
                    2,
                )
                self.__itershift -= 30
                cv2.putText(
                    frame,
                    f"X: {data.pick_point[0]*scale_x:.2f}",
                    (int(x1), int(y1) + self.__itershift),
                    cv2.FONT_HERSHEY_SIMPLEX,
                    1,
                    self.__colors[id % len(self.__colors)],
                    2,
                )
                self.__itershift -= 30

    def draw(self, frame, data_list):
        
        for data in data_list:
            self.__itershift = -5
            self.__draw_bbox(frame, data)
            self.__draw_points(frame, data)
            self.__draw_keypoints(frame, data)
            self.__draw_scores(frame, data)
            self.__draw_coordinates(frame, data)
            self.__draw_pick_angle(frame, data)
            self.__draw_labels(frame, data)
            
        return frame

    def change_setting(self, setting, value):
        Config.set(f"Display.{setting.upper()}", value)
        Config.save()
        setting_name = f"_Drawer__{setting.lower()}"
        if setting_name in self.__dict__:
            self.__dict__[setting_name] = value
            return True
        return False
