@echo off
REM This script installs the search command for Windows 10 and 11
title Search Command Installer
cls
echo === Search Command Installer ===
echo.
echo 1. install search command
echo 2. uninstall search command
echo 3. exit
set /p choice=Please select an option (1-3):
if "%choice%"=="1" goto install
if "%choice%"=="2" goto uninstall
if "%choice%"=="3" exit
echo Invalid choice. Please select 1, 2, or 3.
exit
:install
cls
setx PATH "%PATH%;c:\Users\%USERNAME%\downloads\search-command-for-cmd-main"
echo Search command installed successfully.
echo.
echo You can now use the search command in the command prompt and delete the installer.
echo Press any key to exit...
pause >nul
exit

:uninstall
setx PATH "%PATH%;C:\Windows\System32"
echo Search command uninstalled successfully.
echo.
echo Press any key to exit...
pause >nul
exit