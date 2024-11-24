@echo off

rem ============================================================================
echo Setting up path environment variable for this shell ...

rem Add bin to path; if missing
echo %PATH% | findstr "%~dp0bin" >nul
if errorlevel 1 set Path=%Path%;%~dp0bin

rem ============================================================================
echo The following tools are now available in this shell:
call :LIST %~dp0bin
goto :EOF

:LIST
rem ============================================================================
rem echo Available Tools in %1:
rem dir /b %1\*.cmd %1\*.bat
for /f "tokens=1,2 delims=." %%i in ('dir /b %1\*.cmd %1\*.bat') do echo - %%i
goto :EOF