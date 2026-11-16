@echo off
setlocal
cd /d "%~dp0"

rem Default target is the debug APK: gradlew.bat assembleDebug
rem Other targets: gradlew.bat assembleRelease
rem                gradlew.bat build

echo Building debug APK: gradlew.bat assembleDebug
call "%~dp0gradlew.bat" assembleDebug
if errorlevel 1 (
    echo Build failed.
    pause
    exit /b 1
)
echo Build succeeded. APK: app\build\outputs\apk\debug\
pause
exit /b 0
