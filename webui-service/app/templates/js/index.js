const BASE_URL = window.location.origin;
const WEBUI_API_URL = `${BASE_URL}`;
const CAMERA_API_URL = `${BASE_URL}/api/camera`;
const STREAMING_API_URL = `${BASE_URL}/api/streaming`;
const ROBOT_API_URL = `${BASE_URL}/api/robot`;
const CV_API_URL = `${BASE_URL}/api/cv`;
const IO_API_URL = `${BASE_URL}/api/io`;
const RS0013N_API_URL = `${BASE_URL}/api/rs0013n`;
const RS007L_API_URL = `${BASE_URL}/api/rs007l`;
const MASTER_API_URL = `${BASE_URL}/api/master`;

const DISPLAY_MODES = ["REDIS_CAMERA_FRAME_KEY", "REDIS_PROCESSED_FRAME_KEY"];
var displayModeSelect = 0;
var activeTab = 'control';

function checkServiceHealth(apiUrl, serviceName) {
    fetch(`${apiUrl}/health`)
        .then(response => {
            if (!response.ok) {
                console.log(`Сервис ${serviceName} не доступен`);
                setStatusLight(`${serviceName}-health`, 'offline');
            }
            return response.json();
        })
        .catch(() => {
            console.log(`Сервис ${serviceName} не доступен`);
            setStatusLight(`${serviceName}-health`, 'offline');
            return response.json();
        });
        setStatusLight(`${serviceName}-health`, "ok");
};

function setStatusLight(id, status) {
    const el = document.getElementById(id);
    el.classList.remove('status-on', 'status-off', 'status-error');
    if (status === 'ok') {
        el.classList.add('status-on');
    } else if (status === 'error') {
        el.classList.add('status-error');
    } else {
        el.classList.add('status-off');
    }
};

function checkServicesHealth() {
    checkServiceHealth(WEBUI_API_URL, 'webui');
    checkServiceHealth(CAMERA_API_URL, 'camera');
    checkServiceHealth(STREAMING_API_URL, 'streaming');
    // checkServiceHealth(ROBOT_API_URL, 'robot');
    checkServiceHealth(CV_API_URL, 'cv');
    checkServiceHealth(IO_API_URL, 'io');
    checkServiceHealth(RS0013N_API_URL, 'rs0013n');
    checkServiceHealth(RS007L_API_URL, 'rs007l');
    checkServiceHealth(MASTER_API_URL, 'master');

};

function switchTab(tabId) {
    console.log('Переключаем вкладку на:', tabId);
    activeTab = tabId;
    const tabs = document.querySelectorAll('.tab');
    const contents = document.querySelectorAll('.tab-content');
    tabs.forEach(tab => tab.classList.remove('active'));
    contents.forEach(content => content.classList.remove('active'));
    document.querySelector(`[data-tab="${tabId}"]`)?.classList.add('active');
    document.getElementById(tabId)?.classList.add('active');
};

function setStreamImage() {
    console.log('Загрузка адреса трансляции изображения');
    const streamImage = document.getElementById('stream-image');
    if (streamImage) {
        streamImage.src = `${STREAMING_API_URL}/stream`;
    }
};

function setDocsUrls() {
    
}


function openFullscreen() {
    console.log('Открываем видео на весь экран');
    const streamUrl = document.getElementById('stream-image').src;
    if (streamUrl) {
        window.open(streamUrl, '_blank', 'fullscreen=yes');
    }
}

function saveSnapshot() {
    console.log('Сохраняем снимок');
    fetch(`${CAMERA_API_URL}/save_frame`, { method: 'POST' })
        .then(response => response.json())
        .then(data => {
            if (data.Status === "OK") {
                alert(`Снимок сохранен: ${data.Filename}`);
            } else {
                alert(`Не удалось сохранить снимок`);
            }
        })
        .catch(() => {
            alert('Не удалось сохранить снимок');
        });
}

function updateChangeDisplayButton(mode) {
    console.log('Обновляем кнопку изменения режима отображения');
    const button = document.getElementById('change-display-btn');
    if (button) {
        if (mode === DISPLAY_MODES[0]) {
            button.innerHTML = '<img src="img/switch_left.png" alt="Изменить режим отображения">';
        } else {
            button.innerHTML = '<img src="img/switch_right.png" alt="Изменить режим отображения">';
        }
    }
}

function loadSettings() {
    console.log('Загружаем настройки из файла');
    let config = {};
    fetch(`${WEBUI_API_URL}/config`)
        .then(response => response.json())
        .then(data => {
            console.log('Настройки загружены:', data);
            config = data;
            if (config.Streaming && config.Streaming.DisplayedFrame) {
                updateChangeDisplayButton(config.Streaming.DisplayedFrame);
                displayModeSelect = DISPLAY_MODES.indexOf(config.Streaming.DisplayedFrame);
                console.log("Текущий режим отображения:", config.Streaming.DisplayedFrame);
            }
            
            // Загружаем настройки отображения
            if (config.Display) {
                loadDisplaySettings(config.Display);
            }
            
            // Загружаем настройки моделей
            if (config.Models && config.Process) {
                loadModelSettings(config.Models, config.Process);
            }
        })
        .catch(() => {
            alert('Не удалось загрузить настройки.');
        });
}

function loadDisplaySettings(displayConfig) {
    console.log('Загружаем настройки отображения:', displayConfig);
    
    // Устанавливаем значения переключателей отображения
    const settings = ['bbox', 'coordinates', 'keypoints', 'labels', 'scores', 'points', 'pick_angle'];
    settings.forEach(setting => {
        const checkbox = document.getElementById(`display-${setting}`);
        if (checkbox) {
            const configKey = setting.toUpperCase();
            checkbox.checked = displayConfig[configKey] || false;
        }
    });
}

function loadModelSettings(modelsConfig, processConfig) {
    console.log('Загружаем настройки моделей:', modelsConfig, processConfig);
    
    // Заполняем селектор моделей
    const modelSelect = document.getElementById('model-select');
    if (modelSelect) {
        modelSelect.innerHTML = ''; // Очищаем селектор
        
        Object.keys(modelsConfig).forEach(modelKey => {
            const model = modelsConfig[modelKey];
            const option = document.createElement('option');
            option.value = model.ModelName;
            option.textContent = model.ModelName;
            modelSelect.appendChild(option);
        });
        
        // Устанавливаем текущую модель
        if (processConfig.LastModel) {
            modelSelect.value = processConfig.LastModel;
        }
        
        // Устанавливаем confidence для текущей модели
        const currentModel = processConfig.LastModel || modelSelect.value;
        if (modelsConfig[currentModel]) {
            const confidenceInput = document.getElementById('confidence-input');
            if (confidenceInput) {
                confidenceInput.value = modelsConfig[currentModel].ConfidenceThreshold || 0.5;
            }
        }
    }
}

function changeDisplaySetting(setting, value) {
    console.log(`Изменяем настройку отображения ${setting} на ${value}`);
    
    fetch(`${CV_API_URL}/change_display_setting?setting=${setting}&value=${value}`, {
        method: 'POST'
    })
    .then(response => response.json())
    .then(data => {
        if (data.Status === "OK") {
            console.log(`Настройка отображения ${setting} успешно изменена`);
        } else {
            console.error(`Ошибка при изменении настройки отображения ${setting}:`, data);
            // Возвращаем переключатель в исходное состояние при ошибке
            const checkbox = document.getElementById(`display-${setting}`);
            if (checkbox) {
                checkbox.checked = !value;
            }
        }
    })
    .catch(error => {
        console.error(`Ошибка при изменении настройки отображения ${setting}:`, error);
        // Возвращаем переключатель в исходное состояние при ошибке
        const checkbox = document.getElementById(`display-${setting}`);
        if (checkbox) {
            checkbox.checked = !value;
        }
    });
}

function changeModel() {
    const modelSelect = document.getElementById('model-select');
    const selectedModel = modelSelect.value;
    
    console.log(`Меняем модель на ${selectedModel}`);
    
    fetch(`${CV_API_URL}/change_model?model_name=${selectedModel}`, {
        method: 'POST'
    })
    .then(response => response.json())
    .then(data => {
        if (data.Status === "OK") {
            console.log(`Модель успешно изменена на ${selectedModel}`);
            alert(`Модель успешно изменена на ${selectedModel}`);
        } else {
            console.error(`Ошибка при изменении модели:`, data);
            alert(`Ошибка при изменении модели: ${data.Status}`);
        }
    })
    .catch(error => {
        console.error(`Ошибка при изменении модели:`, error);
        alert(`Ошибка при изменении модели`);
    });
}

function setConfidence() {
    const modelSelect = document.getElementById('model-select');
    const confidenceInput = document.getElementById('confidence-input');
    const selectedModel = modelSelect.value;
    const confidence = parseFloat(confidenceInput.value);
    
    if (isNaN(confidence) || confidence < 0 || confidence > 1) {
        alert('Пожалуйста, введите корректное значение confidence (от 0 до 1)');
        return;
    }
    
    console.log(`Устанавливаем confidence ${confidence} для модели ${selectedModel}`);
    
    fetch(`${CV_API_URL}/set_model_threshold?model_name=${selectedModel}&new_threshold=${confidence}`, {
        method: 'POST'
    })
    .then(response => response.json())
    .then(data => {
        if (data.Status === "OK") {
            console.log(`Confidence успешно установлен для модели ${selectedModel}`);
            alert(`Confidence успешно установлен: ${confidence}`);
        } else {
            console.error(`Ошибка при установке confidence:`, data);
            alert(`Ошибка при установке confidence: ${data.Status}`);
        }
    })
    .catch(error => {
        console.error(`Ошибка при установке confidence:`, error);
        alert(`Ошибка при установке confidence`);
    });
}

function changeDisplayMode() {
    displayModeSelect = (displayModeSelect + 1) % DISPLAY_MODES.length;
    const newMode = DISPLAY_MODES[displayModeSelect];
    console.log('Изменяем режим отображения на:', newMode);

    let endpoint = '';
    if (newMode === "REDIS_CAMERA_FRAME_KEY") {
        endpoint = `${STREAMING_API_URL}/stream_camera_frame`;
    } else {
        endpoint = `${STREAMING_API_URL}/stream_processed_frame`;
    }
    fetch(endpoint, { method: 'POST' })
        .then(response => response.json())
        .then(data => {
            if (data.Status === "OK") {
                updateChangeDisplayButton(newMode);
            } else {
                alert(`Не удалось изменить режим отображения`);
            }
        })
        .catch(() => {
            alert('Не удалось изменить режим отображения');
        });
}

function setOutput(bit, value) {
    fetch(`${IO_API_URL}/output?bit=${bit}&value=${value ? 1 : 0}`, {
        method: 'POST'
    })
    .then(response => response.json())
    .then(data => {
        if (data.Status === "OK") {
            console.log(`Выход ${bit} успешно установлен в ${value ? 1 : 0}`);
            // Обновляем классы для переключателя
            let outputSwitch = document.getElementById(`output-switch-${bit}`);
            if (outputSwitch) {
                if (value) {
                    outputSwitch.classList.add('status-on');
                    outputSwitch.classList.remove('status-off');
                } else {
                    outputSwitch.classList.add('status-off');
                    outputSwitch.classList.remove('status-on');
                }
            }
        } else {
            console.error(`Ошибка при установке выхода ${bit}: ${data.Message}`);
            // Возвращаем переключатель в исходное состояние при ошибке
            let outputSwitch = document.getElementById(`output-switch-${bit}`);
            if (outputSwitch) {
                outputSwitch.checked = !value;
            }
        }
    })
    .catch(error => {
        console.error(`Ошибка при установке выхода ${bit}:`, error);
        // Возвращаем переключатель в исходное состояние при ошибке
        let outputSwitch = document.getElementById(`output-switch-${bit}`);
        if (outputSwitch) {
            outputSwitch.checked = !value;
        }
    });
}


function updateIOState()
{
    fetch(`${IO_API_URL}/inputs/all`)
        .then(response => response.json())
        .then(data => {
            if (data.Status === "OK") {
                let inputs = data.Inputs;
                for (let i = 0; i < inputs.length; i++) {
                    let input = inputs[i];
                    let inputLight = document.getElementById(`input-light-${i}`);
                    if (inputLight) {
                        if (input) {
                            inputLight.classList.add('status-on');
                            inputLight.classList.remove('status-off');
                        } else {
                            inputLight.classList.add('status-off');
                            inputLight.classList.remove('status-on');
                        }
                    }
                }

            } else {
                console.log(`Не удалось загрузить состояние входов`);
            }
        })
        .catch(() => {
            console.log('Не удалось загрузить состояние входов');
        });

    fetch(`${IO_API_URL}/outputs/all`)
        .then(response => response.json())
        .then(data => {
            if (data.Status === "OK") {
                let outputs = data.Outputs;
                for (let i = 0; i < outputs.length; i++) {
                    let output = outputs[i];
                    let outputSwitch = document.getElementById(`output-switch-${i}`);
                    if (outputSwitch) {
                        if (output) {
                            outputSwitch.checked = true;
                            outputSwitch.classList.add('status-on');
                            outputSwitch.classList.remove('status-off');
                        } else {
                            outputSwitch.checked = false;
                            outputSwitch.classList.add('status-off');
                            outputSwitch.classList.remove('status-on');
                        }
                    }
                }
            } else {
                console.log(`Не удалось загрузить состояние выходов`);
            }
        })
        .catch(() => {
            console.log('Не удалось загрузить состояние выходов');
        });
    
}

// Функция для получения объектов из CV API
async function fetchObjects() {
    try {
        const response = await fetch(`${CV_API_URL}/get_objects`);
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        const data = await response.json();
        return data;
    } catch (error) {
        console.error('Ошибка при получении объектов:', error);
        return { Status: "ERROR", Objects: [] };
    }
}

// Функция для отображения объектов в списке
function renderObjects(objectsData) {
    const objectsList = document.getElementById('objects-list');
    
    if (!objectsList) {
        console.error('Элемент objects-list не найден');
        return;
    }
    
    // Очищаем список
    objectsList.innerHTML = '';
    
    if (objectsData.Status !== "OK" || !objectsData.Objects || objectsData.Objects.length === 0) {
        objectsList.innerHTML = '<div class="object-no-data">Объекты не обнаружены</div>';
        return;
    }
    
    // Отображаем каждый объект
    objectsData.Objects.forEach((object, index) => {
        const objectItem = document.createElement('div');
        objectItem.className = 'object-item';
        
        // Форматируем confidence как процент
        const confidencePercent = (object.conf * 100).toFixed(1);
        
        // Форматируем pick_point
        const pickPointStr = object.pick_point ? 
            `(${object.pick_point[0].toFixed(1)}, ${object.pick_point[1].toFixed(1)})` : 
            'N/A';
        
        objectItem.innerHTML = `
            <div class="object-item-header">
                <span class="object-class">${object.class_name || 'Unknown'}</span>
                <span class="object-confidence">${confidencePercent}%</span>
            </div>
            <div class="object-pick-point">Pick: ${pickPointStr}</div>
        `;
        
        // Добавляем обработчик клика для отладки
        objectItem.addEventListener('click', () => {
            console.log('Клик по объекту:', object);
        });
        
        objectsList.appendChild(objectItem);
    });
}

// Функция для обновления списка объектов
async function updateObjectsList() {

    const objectsData = await fetchObjects();
    renderObjects(objectsData);
}

// Easter Egg Animation Function
function showEasterEgg() {
    const easterEgg = document.getElementById('easter-egg');
    easterEgg.classList.add('show');
    
    // Hide the animation after 10 seconds
    setTimeout(() => {
        easterEgg.classList.remove('show');
    }, 10000);
}

document.addEventListener('DOMContentLoaded', () => {
    checkServicesHealth();
    loadSettings();
    setStreamImage();
    document.querySelectorAll('.tab').forEach(tab => {
        tab.addEventListener('click', () => switchTab(tab.getAttribute('data-tab')));
    });
    
    // Add click event listener to the logo for Easter egg
    const logoDiv = document.querySelector('.header-logo');
    if (logoDiv) {
        logoDiv.addEventListener('click', showEasterEgg);
    }
    
    // Начальная загрузка объектов
    updateObjectsList();
});

setInterval(() => {
    if (activeTab === 'io') {
        updateIOState();
    }
}, 500);

setInterval(() => {
    if (activeTab === 'control') {
        updateObjectsList();
    }
}, 1000); // Обновляем объекты каждую секунду

setInterval(checkServicesHealth, 5000);
