import sys
import random
import requests
from PyQt5.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QHBoxLayout, 
                            QPushButton, QLabel, QLineEdit, QComboBox, QSpinBox, 
                            QGroupBox, QCheckBox, QWidget, QMessageBox, QScrollArea)
from PyQt5.QtCore import QTimer, Qt

class APIDebugger(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("API Debugger")
        self.setMinimumSize(1400, 900)  # Увеличена минимальная ширина
        self.base_url = "http://127.0.0.1/api"
        self.setup_ui()
        
    def setup_ui(self):
        # Create main widget and layout
        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        main_layout = QVBoxLayout(main_widget)
        
        # Create scroll area with horizontal layout for two columns
        scroll = QScrollArea()
        scroll.setWidgetResizable(True)
        scroll_widget = QWidget()
        scroll.setWidget(scroll_widget)
        scroll_layout = QHBoxLayout(scroll_widget)
        
        # Left column - scroll area for left side
        left_scroll = QScrollArea()
        left_scroll.setWidgetResizable(True)
        left_scroll.setMinimumWidth(300)
        left_widget = QWidget()
        left_scroll.setWidget(left_widget)
        layout = QVBoxLayout(left_widget)
        
        # Right column - scroll area for right side
        right_scroll = QScrollArea()
        right_scroll.setWidgetResizable(True)
        right_scroll.setMinimumWidth(450)
        right_widget = QWidget()
        right_scroll.setWidget(right_widget)
        right_layout = QVBoxLayout(right_widget)
        
        # 1. Start Process Section
        start_group = QGroupBox("Start Process")
        start_layout = QVBoxLayout()
        
        # Product Selection
        product_layout = QVBoxLayout()
        
        product_layout.addWidget(QLabel("Product:"))
        self.product_combo = QComboBox()
        self.product_combo.addItems(["312.229.002", "0401.17.02.023", "312.229.001", "440.00.026", "440.00.111", "0401.28.02.063"])
        product_layout.addWidget(self.product_combo)
        
        product_layout.addWidget(QLabel("Spec:"))
        self.product_spec = QSpinBox()
        self.product_spec.setRange(0, 32)
        product_layout.addWidget(self.product_spec)

        product_layout.addWidget(QLabel("Count:"))
        self.product_count = QSpinBox()
        self.product_count.setRange(1, 1000)
        self.product_count.setValue(150)
        product_layout.addWidget(self.product_count)
        
        # Tare IDs
        product_layout.addWidget(QLabel("In Tare IDs (comma-separated):"))
        self.in_tare_ids = QLineEdit()
        self.in_tare_ids.setPlaceholderText("e.g., 1,2,3")
        self.in_tare_ids.setText("1")
        product_layout.addWidget(self.in_tare_ids)
        
        product_layout.addWidget(QLabel("Out Tare IDs (comma-separated):"))
        self.out_tare_ids = QLineEdit()
        self.out_tare_ids.setPlaceholderText("e.g., 4,5,6")
        self.out_tare_ids.setText("1")
        product_layout.addWidget(self.out_tare_ids)

        product_layout.addWidget(QLabel("Layout (0-3):"))
        self.layout = QSpinBox()
        self.layout.setRange(0, 3)
        self.layout.setValue(0)
        product_layout.addWidget(self.layout)

        product_layout.addWidget(QLabel("Global Max Tare Count:"))
        self.global_max_tare_count = QSpinBox()
        self.global_max_tare_count.setRange(0, 10000)
        self.global_max_tare_count.setValue(0)
        product_layout.addWidget(self.global_max_tare_count)

        product_layout.addWidget(QLabel("Current Max Tare Count:"))
        self.current_max_tare_count = QSpinBox()
        self.current_max_tare_count.setRange(0, 10000)
        self.current_max_tare_count.setValue(0)
        product_layout.addWidget(self.current_max_tare_count)

        self.use_alternate_wave = QCheckBox("Use Alternate Wave")
        product_layout.addWidget(self.use_alternate_wave)
        
        start_layout.addLayout(product_layout)
        
        # Start Button
        self.start_btn = QPushButton("Start Process")
        self.start_btn.clicked.connect(self.start_process)
        start_layout.addWidget(self.start_btn)
        start_group.setLayout(start_layout)
        layout.addWidget(start_group)
        
        # 2. Process Control Buttons
        control_group = QGroupBox("Process Control")
        control_layout = QHBoxLayout()
        
        self.ereset = QPushButton("ERESET")
        self.ereset.clicked.connect(lambda: self.send_request("/master/error_reset", "POST", {}))
        control_layout.addWidget(self.ereset)

        self.pause_btn = QPushButton("Pause")
        self.pause_btn.clicked.connect(lambda: self.send_request("/master/pause", "POST", {}))
        control_layout.addWidget(self.pause_btn)
        
        self.resume_btn = QPushButton("Resume")
        self.resume_btn.clicked.connect(lambda: self.send_request("/master/resume", "POST", {}))
        control_layout.addWidget(self.resume_btn)
        
        self.stop_btn = QPushButton("Stop")
        self.stop_btn.clicked.connect(lambda: self.send_request("/master/stop", "POST", {}))
        control_layout.addWidget(self.stop_btn)
        
        self.reset_btn = QPushButton("Reset")
        self.reset_btn.clicked.connect(lambda: self.send_request("/master/reset", "POST", {}))
        control_layout.addWidget(self.reset_btn)
        
        self.cycle_on_btn = QPushButton("Cycle ON")
        self.cycle_on_btn.clicked.connect(lambda: self.send_request("/master/cycle_on", "POST", {}))
        control_layout.addWidget(self.cycle_on_btn)

        control_group.setLayout(control_layout)
        layout.addWidget(control_group)
        
        # 3. Sensors Section
        sensors_group = QGroupBox("Sensors")
        sensors_layout = QVBoxLayout()
        
        sensors = [
            ("Stocker Out Tare Sensor", "stockerouttaresensor"),
            ("Stocker In Tare Sensor", "stockerintaresensor"),
            ("Out Pallet Sensor", "outpalletsensor"),
            ("Defect Pallet Sensor", "defectpalletsensor"),
            ("Machine Vacuum", "machinevacuum")
        ]
        
        for sensor_name, sensor_id in sensors:
            sensor_layout = QHBoxLayout()
            sensor_layout.addWidget(QLabel(sensor_name))
            
            true_btn = QPushButton("TRUE")
            true_btn.clicked.connect(lambda checked, s=sensor_id: self.send_sensor_state(s, True))
            
            false_btn = QPushButton("FALSE")
            false_btn.clicked.connect(lambda checked, s=sensor_id: self.send_sensor_state(s, False))
            
            sensor_layout.addWidget(true_btn)
            sensor_layout.addWidget(false_btn)
            sensors_layout.addLayout(sensor_layout)
        
        sensors_group.setLayout(sensors_layout)
        layout.addWidget(sensors_group)
        
        # 4. Measurement Section
        measure_group = QGroupBox("Measurement")
        measure_layout = QVBoxLayout()
        
        # Result Selection
        self.result_combo = QComboBox()
        self.result_combo.addItems(["True", "False", "Random (1:25)"])
        
        # Auto-send
        auto_layout = QHBoxLayout()
        self.auto_send = QCheckBox("Send periodically (ms):")
        self.auto_send.toggled.connect(self.toggle_auto_send)
        auto_layout.addWidget(self.auto_send)
        
        self.interval = QSpinBox()
        self.interval.setRange(100, 10000)
        self.interval.setValue(1000)
        self.interval.setEnabled(True)
        auto_layout.addWidget(self.interval)
        
        # Manual Send Button
        self.send_btn = QPushButton("Send Measurement")
        self.send_btn.clicked.connect(self.send_measurement)
        
        measure_layout.addWidget(QLabel("Measurement Result:"))
        measure_layout.addWidget(self.result_combo)
        measure_layout.addLayout(auto_layout)
        measure_layout.addWidget(self.send_btn)
        
        # # Etalon Result Buttons
        # etalon_result_layout = QHBoxLayout()
        # etalon_result_layout.addWidget(QLabel("Etalon Result:"))
        
        # etalon_ok_btn = QPushButton("Send Etalon OK")
        # etalon_ok_btn.clicked.connect(lambda: self.send_etalon_result(0))
        # etalon_result_layout.addWidget(etalon_ok_btn)
        
        # etalon_retry_btn = QPushButton("Send Etalon Retry")
        # etalon_retry_btn.clicked.connect(lambda: self.send_etalon_result(-1))
        # etalon_result_layout.addWidget(etalon_retry_btn)
        
        # etalon_ng_btn = QPushButton("Send Etalon NG")
        # etalon_ng_btn.clicked.connect(lambda: self.send_etalon_result(-2))
        # etalon_result_layout.addWidget(etalon_ng_btn)
        
        # measure_layout.addLayout(etalon_result_layout)
        
        measure_group.setLayout(measure_layout)
        layout.addWidget(measure_group)
        
        # Add stretch to left column
        layout.addStretch()
        
        # 4.5 Auto Monitor Section (RIGHT COLUMN)
        monitor_group = QGroupBox("Auto Monitor")
        monitor_layout = QVBoxLayout()
        
        monitor_auto_layout = QHBoxLayout()
        self.auto_monitor = QCheckBox("Enable Auto Monitor")
        self.auto_monitor.toggled.connect(self.toggle_auto_monitor)
        monitor_auto_layout.addWidget(self.auto_monitor)
        
        monitor_auto_layout.addWidget(QLabel("Interval (ms):"))
        self.monitor_interval = QSpinBox()
        self.monitor_interval.setRange(100, 10000)
        self.monitor_interval.setValue(500)
        monitor_auto_layout.addWidget(self.monitor_interval)
        
        monitor_layout.addLayout(monitor_auto_layout)
        
        # Status display
        status_layout = QHBoxLayout()
        status_layout.addWidget(QLabel("RS013N Action:"))
        self.rs013n_action_label = QLabel("—")
        self.rs013n_action_label.setStyleSheet("color: gray;")
        status_layout.addWidget(self.rs013n_action_label)
        
        status_layout.addWidget(QLabel("RS007L Action:"))
        self.rs007l_action_label = QLabel("—")
        self.rs007l_action_label.setStyleSheet("color: gray;")
        status_layout.addWidget(self.rs007l_action_label)
        
        monitor_layout.addLayout(status_layout)
        monitor_group.setLayout(monitor_layout)
        right_layout.addWidget(monitor_group)
        
        # 5. Robot Control Section (RIGHT COLUMN)
        robot_group = QGroupBox("Robot Control")
        robot_layout = QVBoxLayout()
        
        # Robot ID (for step/auto/next)
        robotid_layout = QHBoxLayout()
        robotid_layout.addWidget(QLabel("Robot ID:"))
        self.robot_id = QSpinBox()
        self.robot_id.setRange(0, 1000)
        self.robot_id.setValue(0)
        robotid_layout.addWidget(self.robot_id)
        robot_layout.addLayout(robotid_layout)
        
        # Check Etalon
        etalon_layout = QHBoxLayout()
        etalon_layout.addWidget(QLabel("Etalon ID:"))
        self.etalon_id = QSpinBox()
        self.etalon_id.setRange(0, 1000)
        etalon_btn = QPushButton("Check Etalon")
        etalon_btn.clicked.connect(self.check_etalon)
        etalon_layout.addWidget(self.etalon_id)
        etalon_layout.addWidget(etalon_btn)
        robot_layout.addLayout(etalon_layout)
        
        # Etalon Result
        etalon_result_layout = QHBoxLayout()
        etalon_result_layout.addWidget(QLabel("Etalon Result:"))
        
        etalon_ok_btn = QPushButton("OK (0)")
        etalon_ok_btn.clicked.connect(lambda: self.send_etalon_result(0))
        etalon_result_layout.addWidget(etalon_ok_btn)
        
        etalon_retry_btn = QPushButton("Retry (-1)")
        etalon_retry_btn.clicked.connect(lambda: self.send_etalon_result(-1))
        etalon_result_layout.addWidget(etalon_retry_btn)
        
        etalon_ng_btn = QPushButton("NG (-2)")
        etalon_ng_btn.clicked.connect(lambda: self.send_etalon_result(-2))
        etalon_result_layout.addWidget(etalon_ng_btn)
        
        robot_layout.addLayout(etalon_result_layout)
        
        # Set Speed
        speed_layout = QHBoxLayout()
        speed_layout.addWidget(QLabel("Robot Speed (1-100):"))
        self.speed = QSpinBox()
        self.speed.setRange(1, 100)
        self.speed.setValue(50)
        speed_btn = QPushButton("Set Speed")
        speed_btn.clicked.connect(self.set_speed)
        speed_layout.addWidget(self.speed)
        speed_layout.addWidget(speed_btn)
        robot_layout.addLayout(speed_layout)

        # Step/Auto/Next controls
        step_layout = QHBoxLayout()
        set_step_btn = QPushButton("Set Step Mode")
        set_step_btn.clicked.connect(lambda: self.set_step_mode(True))
        set_auto_btn = QPushButton("Set Auto Mode")
        set_auto_btn.clicked.connect(lambda: self.set_step_mode(False))
        next_step_btn = QPushButton("Next Step")
        next_step_btn.clicked.connect(self.next_step)
        step_layout.addWidget(set_step_btn)
        step_layout.addWidget(set_auto_btn)
        step_layout.addWidget(next_step_btn)
        robot_layout.addLayout(step_layout)
        
        robot_group.setLayout(robot_layout)
        right_layout.addWidget(robot_group)
        
        # 6. Debug Section (RIGHT COLUMN)
        debug_group = QGroupBox("Debug")
        debug_layout = QHBoxLayout()
        
        self.pneumo_open_btn = QPushButton("Pneumo Open")
        self.pneumo_open_btn.clicked.connect(lambda: self.send_request("/master/debug/pneumo_open", "POST", {}))
        
        self.pneumo_close_btn = QPushButton("Pneumo Close")
        self.pneumo_close_btn.clicked.connect(lambda: self.send_request("/master/debug/pneumo_close", "POST", {}))
        

        
        debug_layout.addWidget(self.pneumo_open_btn)
        debug_layout.addWidget(self.pneumo_close_btn)
        debug_group.setLayout(debug_layout)
        right_layout.addWidget(debug_group)
        
        # Add stretch to right column
        right_layout.addStretch()
        
        # Add both columns to the scroll layout with stretch factors
        scroll_layout.addWidget(left_scroll, 1)  # Give left column less stretch
        scroll_layout.addWidget(right_scroll, 1)  # Give right column equal stretch
        
        # Set the main layout
        main_layout.addWidget(scroll)
        
        # Initialize timer for auto-send
        self.measurement_timer = QTimer()
        self.measurement_timer.timeout.connect(self.send_measurement)
        
        # Initialize timer for auto-monitor
        self.monitor_timer = QTimer()
        self.monitor_timer.timeout.connect(self.auto_monitor_tick)
    
    def start_process(self):
        product_name = self.product_combo.currentText()
        product_count = self.product_count.value()
        product_spec = self.product_spec.value()
        in_tare_ids = [int(tid.strip()) for tid in self.in_tare_ids.text().split(",") if tid.strip()]
        out_tare_ids = [int(tid.strip()) for tid in self.out_tare_ids.text().split(",") if tid.strip()]
        
        data = {
            "ProductName": product_name,
            "ProductSpec": product_spec,
            "ProductCount": product_count,
            "InTareIDs": in_tare_ids,
            "OutTareIDs": out_tare_ids,
            "Layout": self.layout.value(),
            "GlobalMaxTareCount": self.global_max_tare_count.value(),
            "CurrentMaxTareCount": self.current_max_tare_count.value(),
            "UseAlternateWave": self.use_alternate_wave.isChecked()
        }
        
        self.send_request("/master/start", "POST", data)
    
    def send_sensor_state(self, sensor_name, state):
        data = {
            "SensorName": sensor_name,
            "State": state
        }
        self.send_request("/master/sensor_state", "POST", data)
    
    def send_measurement(self):
        result = self.result_combo.currentText()
        if result == "Random (1:25)":
            result_value = random.randint(1, 25) != 1  # 1:25 chance of False
        if result == "True":
            result_value = True 
        if result == "False":
            result_value = False
        
        self.send_request(f"/master/measurement_result?result={str(result_value).lower()}", "POST", {})
    
    def toggle_auto_send(self, checked):
        if checked:
            self.measurement_timer.start(self.interval.value())
        else:
            self.measurement_timer.stop()
    
    def toggle_auto_monitor(self, checked):
        if checked:
            self.monitor_timer.start(self.monitor_interval.value())
        else:
            self.monitor_timer.stop()
    
    def auto_monitor_tick(self):
        """Периодическая проверка данных и автоматическое управление"""
        try:
            # Получить данные с сервера
            url = f"{self.base_url}/master/data"
            headers = {"accept": "application/json"}
            response = requests.get(url, headers=headers)
            
            if response.status_code != 200:
                return
            
            data = response.json()
            if data.get("Status") != "OK":
                return
            
            data_dict = data.get("Data", {})
            
            # Мониторинг RS013N
            rs013n = data_dict.get("rs013n", {})
            rs013n_action = rs013n.get("action", "")
            
            # Обновить отображение action
            self.rs013n_action_label.setText(rs013n_action if rs013n_action else "—")
            
            if rs013n_action == "WaitOutStockerSensor":
                self.send_sensor_state("stockerouttaresensor", True)
            elif rs013n_action == "WaitInStockerSensor":
                self.send_sensor_state("stockerintaresensor", True)
            
            # Мониторинг RS007L
            rs007l = data_dict.get("rs007l", {})
            rs007l_action = rs007l.get("action", "")
            
            # Обновить отображение action
            self.rs007l_action_label.setText(rs007l_action if rs007l_action else "—")
            
            if rs007l_action == "WaitingMMResult":
                # Отправить Measurement Result с вероятностью 80% true
                result_value = random.random() < 0.8  # 80% вероятность true
                self.send_request(f"/master/measurement_result?result={str(result_value).lower()}", "POST", {})
            elif rs007l_action == "WaitingCalibrrationResult":
                # Отправить etalon_result=0
                self.send_etalon_result(0)
                
        except Exception as e:
            pass  # Игнорировать ошибки и продолжать
    
    def check_etalon(self):
        etalon_id = self.etalon_id.value()
        self.send_request(f"/master/check_etalon?etalon_id={etalon_id}", "POST", {})
    
    def set_speed(self):
        speed = self.speed.value()
        self.send_request(f"/master/set_speed?speed={speed}", "POST", {})
    
    def set_step_mode(self, mode: bool):
        """Установить режим шаг/авто для выбранного робота (mode=True -> step)"""
        robot = self.robot_id.value()
        # отправляем через query для совместимости с текущим сервером
        self.send_request(f"/master/set_step_mode?mode={str(mode).lower()}&robot={robot}", "POST", {})

    def next_step(self):
        """Запрос на переход к следующему шагу для выбранного робота"""
        robot = self.robot_id.value()
        self.send_request(f"/master/next_step?robot={robot}", "POST", {})
    
    def send_etalon_result(self, result: int):
        """Отправить результат проверки эталона (0=OK, -1=Retry, -2=NG)"""
        self.send_request(f"/master/etalon_result?result={result}", "POST", {})
    
    def send_request(self, endpoint, method, data):
        try:
            url = f"{self.base_url}{endpoint}"
            headers = {
                "accept": "application/json",
                "Content-Type": "application/json"
            }
            
            if method.upper() == "POST":
                response = requests.post(url, headers=headers, json=data)
            else:
                response = requests.get(url, headers=headers, params=data)
            
            if response.status_code == 200:
                result = response.json()
                if result.get("Status") == "OK":
                    self.statusBar().showMessage(f"Success: {endpoint}", 3000)
                else:
                    error_msg = result.get("Reason", "Unknown error")
                    #QMessageBox.warning(self, "Error", f"Failed to {endpoint}: {error_msg}")
            else:
                pass
                #QMessageBox.warning(self, "Error", f"HTTP {response.status_code}: {response.text}")
                
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Request failed: {str(e)}")

def main():
    app = QApplication(sys.argv)
    window = APIDebugger()
    window.show()
    sys.exit(app.exec_())

if __name__ == "__main__":
    main()