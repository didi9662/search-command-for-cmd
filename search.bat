@echo off
if "%1" == "/?" (
    echo Busca en internet.
    echo.
    echo Uso:
    echo     search "motor_de_busqueda"
    echo.
    echo Ejemplo:
    echo     search "google"
    echo.
    goto :EOF
)
if "%1" == "" (
    echo Error: Faltan argumentos.
    echo.
    echo si necesita ayuda, escriba "search /?"
    goto :EOF
)
for /f "delims=" %%i in ('powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; $result = [Microsoft.VisualBasic.Interaction]::InputBox('buscar en %1', 'buscador', ''); if ($result -ne '') {Write-Output $result} else {Write-Output 'CANCELADO'}}"') do set "resultado=%%i"
if "%resultado%" == "CANCELADO" (
    echo Operacion cancelada.
    goto :EOF
)
set initial=%resultado%
set final=%initial: =+%
start "" "https://duckduckgo.com/?hps=1&q=%final%+!%1"