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
        self.setMinimumSize(1024, 768)
        self.base_url = "http://127.0.0.1/api"
        self.setup_ui()
        
    def setup_ui(self):
        # Create main widget and layout
        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        main_layout = QVBoxLayout(main_widget)
        
        # Create scroll area
        scroll = QScrollArea()
        scroll.setWidgetResizable(True)
        scroll_widget = QWidget()
        scroll.setWidget(scroll_widget)
        layout = QVBoxLayout(scroll_widget)
        
        # 1. Start Process Section
        start_group = QGroupBox("Start Process")
        start_layout = QVBoxLayout()
        
        # Product Selection
        product_layout = QHBoxLayout()
        product_layout.addWidget(QLabel("Product:"))
        self.product_combo = QComboBox()
        self.product_combo.addItems(["312.229.002", "0401.17.02.023", "312.229.001", "440.00.026", "440.00.111", "0401.28.02.063"])  # Add more products as needed
        product_layout.addWidget(self.product_combo)
        
        product_layout.addWidget(QLabel("Spec:"))
        self.product_spec = QSpinBox()
        self.product_spec.setRange(1, 32)
        product_layout.addWidget(self.product_spec)

        product_layout.addWidget(QLabel("Count:"))
        self.product_count = QSpinBox()
        self.product_count.setRange(1, 1000)
        product_layout.addWidget(self.product_count)
        
        # Tare IDs
        product_layout.addWidget(QLabel("In Tare IDs (comma-separated):"))
        self.in_tare_ids = QLineEdit()
        self.in_tare_ids.setPlaceholderText("e.g., 1,2,3")
        product_layout.addWidget(self.in_tare_ids)
        
        product_layout.addWidget(QLabel("Out Tare IDs (comma-separated):"))
        self.out_tare_ids = QLineEdit()
        self.out_tare_ids.setPlaceholderText("e.g., 4,5,6")
        product_layout.addWidget(self.out_tare_ids)
        
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
        
        measure_group.setLayout(measure_layout)
        layout.addWidget(measure_group)
        
        # 5. Robot Control Section
        robot_group = QGroupBox("Robot Control")
        robot_layout = QVBoxLayout()
        
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
        
        robot_group.setLayout(robot_layout)
        layout.addWidget(robot_group)
        
        # 6. Debug Section
        debug_group = QGroupBox("Debug")
        debug_layout = QHBoxLayout()
        
        self.pneumo_open_btn = QPushButton("Pneumo Open")
        self.pneumo_open_btn.clicked.connect(lambda: self.send_request("/master/debug/pneumo_open", "POST", {}))
        
        self.pneumo_close_btn = QPushButton("Pneumo Close")
        self.pneumo_close_btn.clicked.connect(lambda: self.send_request("/master/debug/pneumo_close", "POST", {}))
        

        
        debug_layout.addWidget(self.pneumo_open_btn)
        debug_layout.addWidget(self.pneumo_close_btn)
        debug_group.setLayout(debug_layout)
        layout.addWidget(debug_group)
        
        # Add stretch to push everything to the top
        layout.addStretch()
        
        # Set the main layout
        main_layout.addWidget(scroll)
        
        # Initialize timer for auto-send
        self.measurement_timer = QTimer()
        self.measurement_timer.timeout.connect(self.send_measurement)
    
    def start_process(self):
        product_name = self.product_combo.currentText()
        product_count = self.product_count.value()
        product_spec = self.spec.value()
        in_tare_ids = [int(tid.strip()) for tid in self.in_tare_ids.text().split(",") if tid.strip()]
        out_tare_ids = [int(tid.strip()) for tid in self.out_tare_ids.text().split(",") if tid.strip()]
        
        data = {
            "ProductName": product_name,
            "ProductSpec": product_spec,
            "ProductCount": product_count,
            "InTareIDs": in_tare_ids,
            "OutTareIDs": out_tare_ids
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
    
    def check_etalon(self):
        etalon_id = self.etalon_id.value()
        self.send_request(f"/master/check_etalon?etalon_id={etalon_id}", "POST", {})
    
    def set_speed(self):
        speed = self.speed.value()
        self.send_request(f"/master/set_speed?speed={speed}", "POST", {})
    
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