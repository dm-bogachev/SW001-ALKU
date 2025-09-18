class YoloData:
    def __init__(self, model_name, xyxy, conf, class_id, class_name, keypoints = None, pick_point = None, pick_angle = None):
        self.model_name = model_name
        self.xyxy = xyxy
        self.conf = conf
        self.class_id = class_id
        self.class_name = class_name
        self.keypoints = keypoints
        self.pick_point = pick_point
        self.pick_angle = pick_angle

    def __repr__(self):
        return (
            f"{self.__class__.__name__}("
            f"Модель={self.model_name!r}, "
            f"XYXY={self.xyxy!r}, "
            f"Вероятность={self.conf:.2f}, "
            f"Класс={self.class_id}, "
            f"Название класса={self.class_name!r}, "
            f"Ключевые точки={self.keypoints!r}, "
            f"Точка забора={self.pick_point!r}, "
            f"Угол забора={self.pick_angle!r})"
        )
