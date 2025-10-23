from ast import While
from HikCamera import HikCamera
import time
import os
import cv2

hik_camera = HikCamera()
hik_camera.open()

cv2.namedWindow("frame", cv2.WINDOW_FREERATIO)
while True:
    frame = hik_camera.get_frame()
    if frame is not None:
        cv2.imshow("frame", frame)
        q = cv2.waitKey(1)
        if q == ord("q"):
            break
        if q == ord("1"):
            timestamp = time.strftime("%Y_%m_%d_%H_%M_%S")
            filename = f"Calibration/data/frame_{timestamp}.jpg"
            cv2.imwrite(filename, frame)