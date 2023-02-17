@echo off
taskkill /f /im topmost.exe
taskkill /f /im autohotkey.exe
taskkill /f /im globalMouse.exe
start /MIN /B globalMouse.exe
exit
