import cv2
# from data.YoloData import YoloData
def process(frame, yolo_data: list):
    result = []
    for data in yolo_data:
        if data.class_id == 0:
            continue
        x1, y1, x2, y2 = data.xyxy
        center = (x1 + x2) / 2, (y1 + y2) / 2
        data.pick_point = center
        data.pick_angle = 0
        result.append(data)
        # frame = cv2.circle(frame, (int(center[0]), int(center[1])), int(abs(x1-x2)), (0, 255, 0), 2)
    return frame, result