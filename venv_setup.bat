@echo off

SET venv_dir=empyrion_autopilot_venv

::if exist %venv_dir% {
::    echo Virtual environment already exists; remove it if you would like to re-install
::    PAUSE
::    exit
::} else {
    echo Installing virtual environment
    python -m venv %venv_dir%
    echo Updating pip and installing requirements
    .\%venv_dir%\Scripts\python.exe -m pip install --upgrade pip
    .\%venv_dir%\Scripts\python.exe -m pip install -r .\requirements.txt
::}

echo Press Enter to activate virtual environment
PAUSE

.\%venv_dir%\Scripts\activate.bat
