@echo off

pushd %~dp0

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if %errorlevel% neq 0 (
    powershell start-process ".\face\face_import.exe" -Verb RunAs
    exit /b
)

popd