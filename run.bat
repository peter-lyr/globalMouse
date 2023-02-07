@echo off
taskkill /f /im topmost.exe
taskkill /f /im autohotkey.exe
start /MIN /B main.ahk
REM  taskkill /f /im globalMouse.exe
REM  Ahk2Exe.exe /icon .ico.ico /base E:\Program_Files\AutoHotKey\AutoHotKeyA32.exe /in main.ahk /out globalMouse.exe
REM  start /MIN /B globalMouse.exe
exit
