@echo off
REM  for /f "tokens=*" %%i in ('reg query "HKEY_CURRENT_USER\Control Panel\Mouse" /v SwapMouseButtons') do (
for /f "tokens=*" %%i in ('reg query "HKEY_CURRENT_USER\Control Panel\Mouse" /v SwapMouseButtons ^| findstr /ri "SwapMouseButtons"') do (
  set str=%%i
)

:delright
if "%str:~-1%"==" " (
  set str=%str:~0,-1%
  goto delright
)

echo %str:~-1%


