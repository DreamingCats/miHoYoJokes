@echo off
SETLOCAL ENABLEEXTENSIONS

rem Checking if Docker is installed
docker --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Docker is not installed. Please install Docker Desktop first.
    pause
    exit /b
)

rem Attempting to start Docker if not already running
net start | find "Docker" >nul || (
    echo Trying to start Docker Desktop...
    start "" "C:\\Program Files\\Docker\\Docker\\Docker Desktop.exe"
    timeout /t 10 /nobreak >nul
)

rem Building the Docker image
echo.
echo Enter the name for the Docker image (e.g., myapp/myimage):
set /p IMAGE_NAME=
echo Building Docker image %IMAGE_NAME%...
docker build -t %IMAGE_NAME% .
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to build the Docker image.
    pause
    exit /b
)

echo Docker image %IMAGE_NAME% built successfully.
pause
ENDLOCAL
