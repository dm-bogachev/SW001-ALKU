import os
import zipfile
import shutil

from ultralytics import YOLO


PROJECT_DIR = os.path.dirname(os.path.abspath(__file__))

DATASETS_DIR = os.path.join(PROJECT_DIR, "datasets")
RUNS_DIR = os.path.join(PROJECT_DIR, "runs")
WEIGHTS_DIR = os.path.join(PROJECT_DIR, "weights")

EPOCHS = 2000
BATCH = 0.9999

MODEL_SIZES = ["n", "s", "m"]


def extract_zip(zip_path):
    """
    Распаковывает ZIP в:
        datasets/<имя_архива_без_zip>/

    Возвращает путь к папке датасета.
    """

    dataset_name = os.path.splitext(
        os.path.basename(zip_path)
    )[0]

    target_dir = os.path.join(
        DATASETS_DIR,
        dataset_name
    )

    os.makedirs(target_dir, exist_ok=True)

    print(f"Распаковка: {os.path.basename(zip_path)}")

    with zipfile.ZipFile(zip_path, "r") as zip_ref:
        zip_ref.extractall(target_dir)

    return target_dir


def find_data_yaml(dataset_dir):
    """
    Ищет data.yaml внутри распакованного датасета.

    Это позволяет работать как с архивом:

        data.yaml
        train/
        valid/

    так и с архивом:

        dataset_name/
            data.yaml
            train/
            valid/
    """

    for root, dirs, files in os.walk(dataset_dir):

        if "data.yaml" in files:
            return os.path.join(root, "data.yaml")

    return None


def get_model_name(dataset_name, size):
    """
    yolov8  -> YOLO11 pose
    yolov11 -> YOLO11 detect
    """

    name = dataset_name.lower()

    if "yolov8" in name:
        return f"yolo11{size}-pose.pt"

    elif "yolov11" in name:
        return f"yolo11{size}.pt"

    raise ValueError(
        f"Не удалось определить тип датасета: {dataset_name}"
    )


def train(dataset_name, data_yaml, size):

    model_name = get_model_name(
        dataset_name,
        size
    )

    run_name = f"{dataset_name}_{size}"

    output_weights = os.path.join(
        WEIGHTS_DIR,
        f"{run_name}.pt"
    )

    # Уже обучали?
    if os.path.isfile(output_weights):

        print()
        print(f"[SKIP] Уже существует:")
        print(f"       {output_weights}")

        return

    print()
    print("=" * 80)
    print(f"Датасет : {dataset_name}")
    print(f"Модель  : {model_name}")
    print(f"Размер  : {size}")
    print("=" * 80)

    # Создаём модель
    model = YOLO(model_name)

    # CUDA
    model.to("cuda")

    # Обучение
    model.train(
        data=data_yaml,
        epochs=EPOCHS,
        project=RUNS_DIR,
        name=run_name,
        batch=BATCH,
    )

    # Лучшие веса
    best_weights = os.path.join(
        RUNS_DIR,
        run_name,
        "weights",
        "best.pt"
    )

    if not os.path.isfile(best_weights):

        print()
        print("[ERROR] Не найден best.pt:")
        print(best_weights)

        return

    # Копируем в нашу папку weights
    shutil.copy2(
        best_weights,
        output_weights
    )

    print()
    print("[OK] Обучение завершено")
    print(f"     {output_weights}")

    # Валидация
    print()
    print("Валидация...")

    results = model.val(
        data=data_yaml,
        project=RUNS_DIR,
        name=f"{run_name}_val",
    )

    print(results)


def main():

    os.makedirs(DATASETS_DIR, exist_ok=True)
    os.makedirs(RUNS_DIR, exist_ok=True)
    os.makedirs(WEIGHTS_DIR, exist_ok=True)

    # Ищем ZIP
    zip_files = sorted(
        [
            f
            for f in os.listdir(DATASETS_DIR)
            if f.lower().endswith(".zip")
        ]
    )

    if not zip_files:

        print("В папке datasets не найдено ZIP-архивов.")
        return

    print()
    print("Найдены датасеты:")

    for zip_file in zip_files:
        print(f"  {zip_file}")

    print()
    print(f"Всего датасетов: {len(zip_files)}")
    print(f"Модели: {', '.join(MODEL_SIZES)}")
    print(f"Всего тренировок: {len(zip_files) * len(MODEL_SIZES)}")
    print()

    # ------------------------------------------------------------------
    # Каждый ZIP
    # ------------------------------------------------------------------

    for zip_file in zip_files:

        zip_path = os.path.join(
            DATASETS_DIR,
            zip_file
        )

        dataset_name = os.path.splitext(zip_file)[0]

        # --------------------------------------------------------------
        # Распаковка
        # --------------------------------------------------------------

        dataset_dir = os.path.join(
            DATASETS_DIR,
            dataset_name
        )

        if not os.path.isdir(dataset_dir):

            dataset_dir = extract_zip(zip_path)

        else:

            print()
            print(f"[SKIP] Уже распакован: {dataset_name}")

        # --------------------------------------------------------------
        # Поиск data.yaml
        # --------------------------------------------------------------

        data_yaml = find_data_yaml(dataset_dir)

        if data_yaml is None:

            print()
            print(f"[ERROR] data.yaml не найден:")
            print(f"        {dataset_dir}")

            continue

        print(f"data.yaml: {data_yaml}")

        # --------------------------------------------------------------
        # n / s / m
        # --------------------------------------------------------------

        for size in MODEL_SIZES:

            try:

                train(
                    dataset_name,
                    data_yaml,
                    size
                )

            except Exception as e:

                print()
                print("=" * 80)
                print(f"[ERROR] {dataset_name} / {size}")
                print(e)
                print("=" * 80)


if __name__ == "__main__":
    main()