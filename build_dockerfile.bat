rem echo Please start docker manually

echo You should install Docker Desktop
pause

echo Trying to start Docker Desktop...
start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"



docker build -t laosepi/genshitjokes .
pause