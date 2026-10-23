@echo off
where gradle >nul 2>nul
if %ERRORLEVEL% EQU 0 (
  gradle %*
) else (
  echo Gradle is not installed. Install Gradle and generate the wrapper with: gradle wrapper --gradle-version 8.9
  exit /b 1
)
