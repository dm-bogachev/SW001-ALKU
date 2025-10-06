import cv2
# from data.YoloData import YoloData
def process(frame, yolo_data: list):
    result = []
    drawframe = frame.copy()
    for data in yolo_data:
        x1, y1, x2, y2 = data.xyxy
        if data.class_id == 0:
            cv2.rectangle(drawframe, (int(x1), int(y1)), (int(x2), int(y2)), (0, 0, 255), 2)
            continue    
        
        center = (x1 + x2) / 2, (y1 + y2) / 2
        data.pick_point = center
        data.pick_angle = 0
        result.append(data)
        # frame = cv2.circle(frame, (int(center[0]), int(center[1])), int(abs(x1-x2)), (0, 255, 0), 2)
    return drawframe, result