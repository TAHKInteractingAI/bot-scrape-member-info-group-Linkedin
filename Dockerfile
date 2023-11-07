FROM python:3.11.4
WORKDIR /app
COPY src /app
COPY requirements.txt /app
RUN pip install --upgrade pip && pip install --requirement /app/requirements.txt
RUN apt-get update && apt-get install libgl1-mesa-dev ffmpeg libsm6 libxext6 -y
RUN apt install -y libxkbcommon-x11-0
RUN apt install -y libxcb-cursor0
RUN pip install pyside6-addons
RUN export QT_QPA_PLATFORM=offscreen
RUN apt install -y qtbase5-dev qtbase5-dev libqt5x11extras5-dev libx11-xcb-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-keysyms1-dev libxcb-render-util0-dev libxcb-xinerama0-dev
RUN apt install libqt5gui5
RUN export QT_QPA_PLATFORM=offscreen
ENV QT_DEBUG_PLUGINS=1
ENV QT_QPA_PLATFORM_PLUGIN_PATH=/mnt/c/Users/thanh/AppData/Local/Programs/Python/Python311/Lib/site-packages/PyQt5/Qt5/plugins
ENV QT_QPA_PLATFORM_PLUGIN_PATH=/mnt/c/Users/thanh/AppData/Local/Programs/Python/Python311/Lib/site-packages/pyqt5_plugins/Qt/plugins
ENV QT_QPA_PLATFORM_PLUGIN_PATH=/mnt/c/Users/thanh/AppData/Local/Programs/Python/Python311/Lib/site-packages/PyQt6/Qt6/plugins
ENV QT_QPA_PLATFORM_PLUGIN_PATH=/mnt/c/Users/thanh/AppData/Local/Programs/Python/Python311/Lib/site-packages/PySide6/plugins
ENV QT_QPA_PLATFORM_PLUGIN_PATH=/mnt/c/Users/thanh/AppData/Local/Programs/Python/Python311/Lib/site-packages/qt5_applications/Qt/plugins
ENV QT_QPA_PLATFORM_PLUGIN_PATH=/mnt/c/Users/thanh/AppData/Local/Programs/Python/Python311/Lib/site-packages/PySide6/plugins
EXPOSE 5000
CMD ["python", "loginHandle.py"]
