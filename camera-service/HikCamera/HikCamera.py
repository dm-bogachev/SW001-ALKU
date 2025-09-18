# Системные импорты
import os, sys, time, socket, ctypes, platform
from ctypes import byref, POINTER, cast, sizeof, memset
from threading import Lock

# Добавляем директорию проекта в sys.path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "../..")))

# Внешние модули
import pandas as pd
import numpy as np

# Внутренние модули
from common.Logger import config_logger

logger = config_logger("HikCamera.py")


# Определяет платформу и возвращает соответствующий путь для Hikvision SDK
if platform.system() == "Linux":
    arch = platform.machine().lower()
    if arch == "x86_64" or arch == "amd64":
        hikpath = "MvImport/x64"
    elif arch == "aarch64" or arch == "arm64":
        hikpath = "MvImport/aarch64"
    else:
        hikpath = None
if platform.system() == "Windows":
    hikpath = "MvImport/win"

if hikpath is None:
    logger.error(
        "Не удалось определить путь к библиотеке Hikvision SDK для вашей платформы."
    )
    raise ImportError("Hikvision SDK не поддерживается на этой платформе.")
logger.debug(f"Используемый путь к библиотеке Hikvision SDK: {hikpath}")

# Добавляем путь к библиотеке Hikvision SDK в системный путь
sys.path.append(os.path.join(os.path.dirname(__file__), hikpath))
import MvCameraControl_class as MvCameraControl

_lock_name_to_lock = {}

class HikCameraException(Exception):
    """Исключение для ошибок работы с камерой Hikvision."""
    pass


class HikCamera(MvCameraControl.MvCamera):
    """Класс для работы с камерами Hikvision через SDK MvCameraControl_class."""

    def __get_setting_df():
        """Получение DataFrame с настройками камеры Hikvision из CSV-файла."""

        data = pd.read_csv(
            os.path.join(os.path.dirname(__file__), hikpath + "/MvCameraNode-CH.csv")
        )
        setting_df = pd.DataFrame()

        def to_key(key):
            if "[" in key:
                key = key[: key.index("[")]
            return key.strip()

        def get_depend(key):
            key = key.strip()
            if "[" in key:
                return key[key.index("[") + 1 : -1]
            return ""

        setting_df["key"] = data[list(data)[1]].map(to_key)
        setting_df["depend"] = data[list(data)[1]].map(get_depend)
        setting_df["dtype"] = data[list(data)[2]].map(lambda x: x.strip().lower())
        return setting_df

    high_speed_lock = Lock()
    setting_df = __get_setting_df()

    def __set_item(self, key, value):
        """Установка значения параметра камеры по ключу."""

        df = self.setting_df
        dtype = df[df.key == key]["dtype"].iloc[0]
        if dtype == "iboolean":
            set_func = self.MV_CC_SetBoolValue
        if dtype == "icommand":
            set_func = self.MV_CC_SetCommandValue
        if dtype == "ienumeration":
            if isinstance(value, str):
                set_func = self.MV_CC_SetEnumValueByString
            else:
                set_func = self.MV_CC_SetEnumValue
        if dtype == "ifloat":
            set_func = self.MV_CC_SetFloatValue
        if dtype == "iinteger":
            set_func = self.MV_CC_SetIntValue
        if dtype == "istring":
            set_func = self.MV_CC_SetStringValue
        if dtype == "register":
            set_func = self.MV_CC_RegisterEventCallBackEx
        with self.__lock:
            ret = set_func(key, value)
            if ret != 0:
                logger.error(
                    f"Установка параметра '{key}' со значением {value} не удалась! ret[0x{ret}]"
                )
                raise HikCameraException(
                    f"Установка параметра '{key}' со значением {value} не удалась! ret[0x{ret}]"
                )

    def __get_item(self, key):
        """Получение значения параметра камеры по ключу."""

        df = self.setting_df
        dtype = df[df.key == key]["dtype"].iloc[0]
        if dtype == "iboolean":
            get_func = self.MV_CC_GetBoolValue
            value = ctypes.c_bool()
        if dtype == "icommand":
            get_func = self.MV_CC_GetCommandValue
        if dtype == "ienumeration":
            get_func = self.MV_CC_GetEnumValue
            value = ctypes.c_uint32()
        if dtype == "ifloat":
            get_func = self.MV_CC_GetFloatValue
            value = ctypes.c_float()
        if dtype == "iinteger":
            get_func = self.MV_CC_GetIntValue
            value = ctypes.c_int()
        if dtype == "istring":
            get_func = self.MV_CC_GetStringValue
            value = (ctypes.c_char * 50)()
        if dtype == "register":
            get_func = self.MV_CC_RegisterEventCallBackEx
        with self.__lock:
            ret = get_func(key, byref(value))
            if ret != 0:
                logger.error(f"Получение параметра '{key}' не удалось! ret[0x{ret}]")
                raise HikCameraException(
                    f"Получение параметра '{key}' не удалось! ret[0x{ret}]"
                )

        return value.value

    __getitem__ = __get_item
    __setitem__ = __set_item

    def __init__(self, ip=None, host_ip=None):
        """Инициализация камеры Hikvision.
        :param ip: IP-адрес камеры. Если не указан, будет найден автоматически.
        :param host_ip: IP-адрес хоста, на котором запущена камера. Если не указан, будет определен автоматически.
        """
        super().__init__()
        logger.info("Инициализация камеры Hikvision")

        self.mvcc_dev_info = None
        self.__lock = Lock()
        self.TIMEOUT_MS = 2000
        if ip is None:
            logger.debug("IP камеры не указан, будет найден автоматически")
            ip = self.__find_ip()
        self.__ip = ip

        if host_ip is None:
            logger.debug("IP хоста не указан, будет определен автоматически")
            host_ip = self.__get_host_ip(ip)
            logger.debug(f"Определен IP хоста: {host_ip}")
        else:
            logger.debug(f"Используется указанный IP хоста: {host_ip}")
        self.__host_ip = host_ip

        self.__last_time_get_frame = 0
        self.__setting_items = None
        self.__config = None
        self.__create_camera_handle()

        self.__is_opened = False

        # self.open()

    def __del__(self):
        """Освобождение ресурсов при удалении объекта камеры Hikvision."""
        self.MV_CC_DestroyHandle()

    def __find_ip(self):
        """Поиск IP-адреса устройства."""

        logger.debug("Поиск IP-адреса устройства Hikvision")
        while True:
            self.deviceList = MvCameraControl.MV_CC_DEVICE_INFO_LIST()
            tlayerType = (
                MvCameraControl.MV_GIGE_DEVICE
                | MvCameraControl.MV_USB_DEVICE
                | MvCameraControl.MV_GENTL_CAMERALINK_DEVICE
                | MvCameraControl.MV_GENTL_CXP_DEVICE
                | MvCameraControl.MV_GENTL_XOF_DEVICE
                | MvCameraControl.MV_VIR_GIGE_DEVICE
            )
            ret = MvCameraControl.MvCamera.MV_CC_EnumDevices(
                tlayerType, self.deviceList
            )
            if ret != 0:
                logger.error(
                    f"Поиск устройств Hikvision не удалась! ret[0x{ret}]. Повтор через 10 секунд."
                )
                time.sleep(10)
                continue

            if self.deviceList.nDeviceNum > 0:
                self.mvcc_dev_info = cast(
                    self.deviceList.pDeviceInfo[0],
                    POINTER(MvCameraControl.MV_CC_DEVICE_INFO),
                ).contents
                ip = self.__int2ip(self.mvcc_dev_info.SpecialInfo.stGigEInfo.nCurrentIp)
                self.device_name = self.__get_device_name()
                logger.info(
                    f"Найдено устройство Hikvision: {self.device_name}, IP: {ip}"
                )
                return ip
            else:
                logger.error(
                    "Устройство Hikvision не найдено! Повтор поиска через 10 секунд."
                )
                time.sleep(10)

    def __int2ip(self, i):
        """Преобразование целого числа в IP-адрес."""

        return f"{(i & 0xff000000) >> 24}.{(i & 0x00ff0000) >> 16}.{(i & 0x0000ff00) >> 8}.{i & 0x000000ff}"

    def __get_device_name(self):
        """Получение имени устройства Hikvision."""

        if self.mvcc_dev_info:
            device_name = ""
            for byte in self.mvcc_dev_info.SpecialInfo.stGigEInfo.chModelName:
                if byte == 0:
                    break
                device_name += chr(byte)
            return device_name
        return ""

    def __ip2int(self, ip):
        """Преобразование IP-адреса в целое число."""

        parts = list(map(int, ip.split(".")))
        return (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8) | parts[3]

    def __get_host_ip(self, target_ip):
        """Получение IP-адреса хоста, на котором запущена камера."""

        return [
            (s.connect((target_ip, 80)), s.getsockname()[0], s.close())
            for s in [socket.socket(socket.AF_INET, socket.SOCK_DGRAM)]
        ][0][1]

    def __create_camera_handle(self):
        """Создание дескриптора камеры Hikvision."""

        logger.debug("Создание дескриптора камеры Hikvision")
        if self.mvcc_dev_info is None:
            stDevInfo = MvCameraControl.MV_CC_DEVICE_INFO()
            stGigEDev = MvCameraControl.MV_GIGE_DEVICE_INFO()

            stGigEDev.nCurrentIp = self.__ip2int(self.__ip)
            stGigEDev.nNetExport = self.__ip2int(self.__host_ip)
            stDevInfo.nTLayerType = MvCameraControl.MV_GIGE_DEVICE
            stDevInfo.SpecialInfo.stGigEInfo = stGigEDev
            self.mvcc_dev_info = stDevInfo
            self.device_name = self.__get_device_name()
        ret = self.MV_CC_CreateHandle()
        if ret != 0:
            logger.error(f"Создание дескриптора камеры не удалось! ret[0x{ret}]")
            raise HikCameraException(
                f"Создание дескриптора камеры не удалось! ret[0x{ret}]"
            )
        else:
            logger.debug("Создание дескриптора камеры успешно.")
        return ret

    def MV_CC_CreateHandle(self):
        self.__ip = self.__int2ip(self.mvcc_dev_info.SpecialInfo.stGigEInfo.nCurrentIp)
        return super().MV_CC_CreateHandle(self.mvcc_dev_info)

    def open(self):
        """Открытие камеры Hikvision и настройка параметров."""

        logger.debug("Открытие камеры Hikvision")

        ret = self.MV_CC_OpenDevice(MvCameraControl.MV_ACCESS_Exclusive, 0)
        if ret != 0:
            logger.error(f"Открытие камеры не удалось! ret[0x{ret}]")
            raise HikCameraException(f"Открытие камеры не удалось! ret[0x{ret}]")

        if self.__setting_items is not None:
            if isinstance(self.__setting_items, dict):
                self.__setting_items = self.__setting_items.values()
            for key, value in self.__setting_items:
                self.__set_item(key, value)

        self.__set_item("TriggerMode", MvCameraControl.MV_TRIGGER_MODE_ON)
        self.__set_item("TriggerSource", MvCameraControl.MV_TRIGGER_SOURCE_SOFTWARE)
        self.__set_item("AcquisitionFrameRateEnable", False)
        self.__set_item("PixelFormat", "RGB8Packed")
        self.__set_item("ExposureAuto", "Continuous")

        stParam = MvCameraControl.MVCC_INTVALUE()
        memset(byref(stParam), 0, sizeof(MvCameraControl.MVCC_INTVALUE))
        ret = self.MV_CC_GetIntValue("PayloadSize", stParam)
        if ret != 0:
            logger.error(
                f"Получение размера полезной нагрузки не удалось! ret[0x{ret}]"
            )
            raise HikCameraException(
                f"Получение размера полезной нагрузки не удалось! ret[0x{ret}]"
            )
        self.nPayloadSize = stParam.nCurValue
        self.data_buf = (ctypes.c_ubyte * self.nPayloadSize)()
        self.stFrameInfo = MvCameraControl.MV_FRAME_OUT_INFO_EX()
        memset(byref(self.stFrameInfo), 0, sizeof(self.stFrameInfo))

        ret = self.MV_CC_StartGrabbing()
        if ret != 0:
            logger.error(f"Запуск захвата кадров не удался! ret[0x{ret}]")
            raise HikCameraException(f"Запуск захвата кадров не удался! ret[0x{ret}]")
        self.__is_opened = True

        logger.debug("Камера Hikvision успешно проинициализирована и открыта")

    def close(self):
        """Закрытие камеры Hikvision и освобождение ресурсов."""

        logger.debug("Закрытие камеры Hikvision")

        self.__set_item("TriggerMode", MvCameraControl.MV_TRIGGER_MODE_OFF)
        self.__set_item("AcquisitionFrameRateEnable", True)

        ret = self.MV_CC_StopGrabbing()
        if ret != 0:
            logger.error(f"Остановка захвата кадров не удалась! ret[0x{ret}]")
            raise HikCameraException(
                f"Остановка захвата кадров не удалась! ret[0x{ret}]"
            )

        self.MV_CC_CloseDevice()
        self.__is_opened = False
        logger.debug("Камера Hikvision успешно закрыта")

    def get_frame(self):
        """Получение кадра с камеры."""
        logger.debug("Получение кадра с камеры Hikvision")
        stFrameInfo = self.stFrameInfo

        config = self.__config or {}
        lock_name = config.get("lock_name")
        repeat_trigger = config.get("repeat_trigger", 1)

        # Получаем или создаём lock для данного lock_name
        if lock_name not in _lock_name_to_lock:
            _lock_name_to_lock[lock_name] = Lock()
        lock = _lock_name_to_lock[lock_name]

        frame_received = False
        with lock:
            for _ in range(repeat_trigger):
                with self.__lock:
                    ret = self.MV_CC_SetCommandValue("TriggerSoftware")
                    if ret != 0:
                        logger.error(f"Программная команда триггера не удалась! ret[0x{ret}]")
                        raise HikCameraException(f"Программная команда триггера не удалась! ret[0x{ret}]")
                    ret = self.MV_CC_GetOneFrameTimeout(
                        byref(self.data_buf),
                        self.nPayloadSize,
                        self.stFrameInfo,
                        self.TIMEOUT_MS,
                    )
                    if ret == 0:
                        frame_received = True
                        self.last_time_get_frame = time.time()
                        break  # получили кадр, выходим из цикла

        if not frame_received:
            logger.error("Не удалось получить кадр с камеры после всех попыток.")
            raise HikCameraException("Не удалось получить кадр с камеры.")

        h, w = stFrameInfo.nHeight, stFrameInfo.nWidth
        if h == 0 or w == 0:
            logger.error("Некорректные размеры кадра: h=0 или w=0")
            raise HikCameraException("Некорректные размеры кадра: h=0 или w=0")

        self.bit = bit = self.nPayloadSize * 8 // h // w
        self.shape = h, w

        buf = np.frombuffer(self.data_buf, dtype=np.uint8)

        if bit == 8:
            frame = buf.reshape(self.shape)
        elif bit == 24:
            self.shape = (h, w, 3)
            frame = buf.reshape(self.shape)
        elif bit == 16:
            raw = buf.reshape(h, w, 2)
            frame = raw[..., 1].astype(np.uint16) * 256 + raw[..., 0]
        elif bit == 12:
            self.shape = h, w
            arr = buf.astype(np.uint16)
            arr2 = arr[1::3]
            arrl = (arr[::3] << 4) + ((arr2 & ~np.uint16(15)) >> 4)
            arrr = (arr[2::3] << 4) + (arr2 & np.uint16(15))
            frame = np.concatenate([arrl[..., None], arrr[..., None]], 1).reshape(self.shape)
        else:
            logger.error(f"Неподдерживаемая битность кадра: {bit}")
            raise HikCameraException(f"Неподдерживаемая битность кадра: {bit}")

        logger.debug(f"Получен кадр: {self.shape}, битность: {bit}")
        self.last_frame = frame
        return frame
    
    def is_opened(self):
        return self.__is_opened

    def get_ip(self):
        """Получение IP-адреса камеры Hikvision."""
        if self.mvcc_dev_info is None:
            raise HikCameraException("Камера не инициализирована.")
        return self.__int2ip(self.mvcc_dev_info.SpecialInfo.stGigEInfo.nCurrentIp)

    def get_device_name(self):
        """Получение имени устройства камеры Hikvision."""
        if self.mvcc_dev_info is None:
            raise HikCameraException("Камера не инициализирована.")
        return self.__get_device_name()

    def set_exposure(self, exposure_value):
        """Установка значения экспозиции камеры Hikvision."""
        self.MV_CC_SetIntValue("ExposureValue", exposure_value)

    def reboot(self):
        """Перезагрузка камеры Hikvision."""
        self.MV_CC_SetCommandValue("DeviceReset")



if __name__ == "__main__":
    import cv2

    try:
        hik_camera = HikCamera()
        hik_camera.open()
        time.sleep(1)
        frame = hik_camera.get_frame()
        cv2.namedWindow("Hikvision", cv2.WINDOW_FREERATIO)
        cv2.imshow("Hikvision", frame)
        cv2.waitKey(0)
        time.sleep(1)
        hik_camera.close()
        a = 0
    except HikCameraException as e:
        logger.error(f"Ошибка HikCamera: {e}")
    except Exception as e:
        logger.error(f"Неизвестная ошибка: {e}")
