import os
import sys
import zipfile
import shutil
from datetime import datetime
from ultralytics import YOLO

YOLO_BASE_MODEL = 'yolo11m.pt'
PROJECT_DIR = os.path.dirname(os.path.abspath(__file__))
DATASETS_DIR = os.path.join(PROJECT_DIR, 'datasets')
RUNS_DIR = os.path.join(PROJECT_DIR, 'runs')

def extract_zip_to_named_folder(zip_path, extract_root, folder_name):
    target_dir = os.path.join(extract_root, folder_name)
    os.makedirs(target_dir, exist_ok=True)
    with zipfile.ZipFile(zip_path, 'r') as zip_ref:
        # Проверяем, есть ли в архиве папка с нужным именем
        has_folder = any(
            x.filename.startswith(folder_name + "/") or x.filename.startswith(folder_name + "\\")
            for x in zip_ref.infolist()
        )
        if has_folder:
            zip_ref.extractall(extract_root)
        else:
            # Распаковываем всё во временную папку, затем переносим
            for member in zip_ref.namelist():
                zip_ref.extract(member, target_dir)
    return target_dir


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python trainer.py <dataset_zip_file>")
        sys.exit(1)

    zip_filename = sys.argv[1]
    zip_path = os.path.join(PROJECT_DIR, zip_filename)
    if not os.path.isfile(zip_path):
        print(f"File not found: {zip_path}")
        sys.exit(1)

    # Имя папки = имя архива без .zip
    dataset_name = os.path.splitext(os.path.basename(zip_filename))[0]
    dataset_dir = extract_zip_to_named_folder(zip_path, DATASETS_DIR, dataset_name)
    data_yaml_path = os.path.join('datasets', dataset_name, 'data.yaml')

    if not os.path.isfile(os.path.join(PROJECT_DIR, data_yaml_path)):
        print(f"data.yaml not found in {data_yaml_path}")
        sys.exit(1)

    model = YOLO(YOLO_BASE_MODEL)
    model.to("cuda")
    results = model.train(
        data=data_yaml_path,
        epochs=800,
        model=YOLO_BASE_MODEL,
        project=RUNS_DIR,
        batch=12,
    )
    print(results)
    results = model.val(
        data=data_yaml_path,
        model=YOLO_BASE_MODEL,
        project=RUNS_DIR
    )
    print(results)
