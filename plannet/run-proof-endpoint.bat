@echo off
setlocal
pushd "%~dp0"
"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -File "./run-proof.ps1" -MapNames Endpoint %*
popd
exit /b %ERRORLEVEL%
