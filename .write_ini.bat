@echo off
setlocal enabledelayedexpansion
set count=0
for /f "tokens=*" %%i in (globalMouse.ini) do (
  set /a count+=1
  set var[!count!]=%%i
)
echo %var[2]%
timeout /t 3
exit
