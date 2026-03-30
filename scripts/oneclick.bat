@echo off
setlocal
powershell -ExecutionPolicy Bypass -File "%~dp0oneclick.ps1"
if errorlevel 1 (
  echo Installation failed.
  pause
  exit /b 1
)
echo Done.
pause
