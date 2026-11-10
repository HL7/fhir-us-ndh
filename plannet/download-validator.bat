@echo off
setlocal
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0download-validator.ps1"
exit /b %ERRORLEVEL%
