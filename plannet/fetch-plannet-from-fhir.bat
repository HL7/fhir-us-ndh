@echo off
setlocal
pushd "%~dp0"
"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -File "./fetch-plannet-from-fhir.ps1" %*
popd
exit /b %ERRORLEVEL%
