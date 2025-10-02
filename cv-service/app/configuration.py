# Системные импорты
import os, sys
# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Внутренние модули
from common.Config import Config

base_settings = {

    "Process":{
        "ProcessingDelay": 1,
        "LastModel": "LongDetails",
        "FirstObjectCriteria": "Probability" # "Probability" or "Coordinates"
    },

    "Markers": {
        "MarkersXDistance": 410.0,
        "MarkersYDistance": 286.0,
        "Marker00ID": 0,
        "Marker00Point": 0,  # Top Left
        "MarkerX0ID": 1,
        "MarkerX0Point": 1,  # Top Right
        "MarkerXYID": 2,
        "MarkerXYPoint": 2,  # Bottom Right
        "Marker0YID": 3,
        "Marker0YPoint": 3,  # Bottom Left
    },
    
    "Models": {
        "LongDetails": {
            "ModelName": "LongDetails",
            "ModelFileName": "details_long_test.pt",
            "ConfidenceThreshold": 0.5,
            "ModelType": "yolo-pose",
            "ModelProcessor": "LongDetailsProcessor.py",
            
        },
        "RoundDetails": {
            "ModelName": "RoundDetails",
            "ModelFileName": "rounds.pt",
            "ConfidenceThreshold": 0.5,
            "ModelType": "yolo-detect",
            "ModelProcessor": "RoundDetailsProcessor.py",
        },
    },
    "Display": {
        "BBOX": True,
        "COORDINATES": True,
        "KEYPOINTS": True,
        "LABELS": True,
        "SCORES": True,
        "POINTS": True,
        "PICK_ANGLE": True
    }
}

Config.add(base_settings)

