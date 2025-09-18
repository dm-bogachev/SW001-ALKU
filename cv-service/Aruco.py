# Системные импорты
import os, time, sys, threading
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внешние модули
import cv2
import numpy as np

# Внутренние модули
from common.Logger import config_logger

logger = config_logger("cv-service/Aruco.py")

class ArucoMarker():
    def __init__(self, id, center, corners):
        self.id = id
        self.center = center
        [self.topLeft, self.topRight, self.bottomRight, self.bottomLeft] = corners
        self.corners = corners

class Aruco:    
    def __init__(self):
        self.aruco_dict = cv2.aruco.getPredefinedDictionary(cv2.aruco.DICT_4X4_100)
        self.parameters = cv2.aruco.DetectorParameters()
        self.detector = cv2.aruco.ArucoDetector(self.aruco_dict, self.parameters)

    def detectMarkers(self, gray_frame):
        self.corners, self.idsd, self.rejected = self.detector.detectMarkers(gray_frame)
        if self.idsd is not None:
            logger.debug(f"Обнаружено {len(self.idsd)} маркеров ArUco")
            markers = {}
            try:
                ids = np.copy(self.idsd)
                ids = ids.flatten()
                
                for (markerCorner, markerID) in zip(self.corners, ids):   
                    self.corners = markerCorner.reshape((4, 2))
                    (topLeft, topRight, bottomRight, bottomLeft) = self.corners
                    topRight = [int(topRight[0]), int(topRight[1])]
                    bottomRight = [int(bottomRight[0]), int(bottomRight[1])]
                    bottomLeft = [int(bottomLeft[0]), int(bottomLeft[1])]
                    topLeft = [int(topLeft[0]), int(topLeft[1])]
                    cX = int((topLeft[0] + bottomRight[0]) / 2.0)
                    cY = int((topLeft[1] + bottomRight[1]) / 2.0)
                    markers[markerID] = ArucoMarker(markerID, [cX, cY], [topLeft, topRight, bottomRight, bottomLeft])
                
                logmsg = f"Обнаруженные маркеры: id={', id='.join(str(id) for id in markers.keys())}"
                logger.debug(logmsg)
                return markers
            except Exception as e:
                logger.error(f"Ошибка при обработке маркеров ArUco: {e}")
                return markers

if __name__ == '__main__':
    from common.Redis import get_redis_client
    redis_client = get_redis_client()
    cv2.namedWindow("Frame", cv2.WINDOW_FREERATIO)

    REDIS_CAMERA_FRAME_KEY = os.getenv("REDIS_CAMERA_FRAME_KEY", "camera_frame")
    aruco = Aruco()

    while True:

        frame_data = redis_client.get(REDIS_CAMERA_FRAME_KEY)
        if frame_data:
            np_arr = np.frombuffer(frame_data, np.uint8)
            img = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)

        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        markers = aruco.detectMarkers(gray)

        if markers and len(markers) > 0:
            for id, marker in markers.items():
                cv2.drawMarker(img, marker.center, (255,0,0), cv2.MARKER_CROSS, 5, 8)
                cv2.putText(img, f"ID: {id}", (marker.center[0] + 10, marker.center[1]), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255,0,0), 2)
                cv2.polylines(img, [np.array([marker.topLeft, marker.topRight, marker.bottomRight, marker.bottomLeft], dtype=np.int32)], isClosed=True, color=(0, 255, 0), thickness=2)

        cv2.imshow("Frame", img)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    cv2.destroyAllWindows()
