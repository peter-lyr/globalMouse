@echo off
taskkill /f /im topmost.exe
taskkill /f /im autohotkey.exe
REM  start /MIN /B main.ahk
taskkill /f /im globalMouse.exe
Ahk2Exe.exe /icon .ico.ico /base E:\Program_Files\AutoHotkey\AutoHotkeyA32.exe /in main.ahk /out globalMouse.exe
start /MIN /B globalMouse.exe
timeout /t 5
exit
