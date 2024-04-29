:: Installation script :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
::                       Object Detection (YOLOv5 3.1)
::
:: This script is called from the ObjectDetectionYOLOv5-3.1 directory using: 
::
::    ..\..\CodeProject.AI-Server\src\setup.bat
::
:: The setup.bat file will find this install.bat file and execute it.
::
:: For help with install scripts, notes on variables and methods available, tips,
:: and explanations, see /src/modules/install_script_help.md

@if "%1" NEQ "install" (
    echo This script is only called from ..\..\CodeProject.AI-Server\src\setup.bat
    @pause
    @goto:eof
)

:: Download the YOLO models and custom models and store in /assets
call "%utilsScript%" GetFromServer "models/" "models-yolo5-31-pt.zip"        "assets" "Downloading Standard YOLOv5 models..."
call "%utilsScript%" GetFromServer "models/" "custom-models-yolo5-31-pt.zip" "custom-models" "Downloading Custom YOLOv5 models..."

REM TODO: Check assets created and has files
REM set moduleInstallErrors=...
