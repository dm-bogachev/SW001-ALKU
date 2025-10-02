class YoloModel:
    def __init__(
        self,
        model_name,
        model_file_name,
        confidence_threshold,
        model_type,
        processor_file,
        
    ):
        self.model_name = model_name
        self.model_file_name = model_file_name
        self.confidence_threshold = confidence_threshold
        self.model_type = model_type
        self.processor_file = processor_file

    def __repr__(self):
        return (
            f"\nИнформация о модели:\n"
            f"   Имя модели: {self.model_name}\n"
            f"   Файл модели: {self.model_file_name}\n"
            f"   Порог уверенности: {self.confidence_threshold:.2f}\n"
            f"   Тип модели: {self.model_type}"
            f"   Выбор точки: {self.pick_point}\n"
        )

