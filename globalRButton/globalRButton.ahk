RButtonPressCnt := 0
_RButtonTimerOut := 12
_RButtonTimerCnt := _RButtonTimerOut

IniRead, CircleSize, globalMouse.ini, Circle, size, 90
IniRead, CircleColor, globalMouse.ini, Circle, color, red
IniWrite %CircleSize%, globalMouse.ini, Circle, size
IniWrite %CircleColor%, globalMouse.ini, Circle, color

GoSub, InitCircle
GoSub, StartCheckMstsc
GoSub, BatListInit

if (GetIni_MainMouseButton() == 1) {
  Flag_SwapMouseButton := DllCall("SwapMouseButton")
}

#Include %A_ScriptDir%\globalRButton\_countRButton.ahk
#Include %A_ScriptDir%\globalRButton\_drawCircle.ahk
#Include %A_ScriptDir%\globalRButton\_watchEvent.ahk
#Include %A_ScriptDir%\globalRButton\_checkMsTsc.ahk

SendRightClickWatcher:
  if (_RButtonTimerCnt > _RButtonTimerOut) {
    SetTimer, SendRightClickWatcher, Off
    Click, Right
  }
Return

SendRightClick:
  if (SomeThingDone == 0 and Direction == "Center") {
    SetTimer, SendRightClickWatcher, 10
  }
Return

_RemoveTooltip:
  tooltip
Return

GlobalRButton:
  SetTimer, SendRightClickWatcher, Off
  PathCopied := 0
  SomeThingDone := 0
  Flag_RButtonDown := 1
  Flag_RightUpCancel := 0
  Flag_WheelUsed := 0
  GoSub, DrawCircle
  GoSub, CntGlobalRButton
  MouseGetPos, SelectedWindow_X, SelectedWindow_Y, SelectedWindow_Id
  SelectedWindow(SelectedWindow_Id)
  SetTimer, RButtonWatcher, 10
Return

GlobalRButtonEnd:
  GoSub, SendRightClick
  Flag_RButtonDown := 0
  SetTimer, DrawCircle1S, Off
  GoSub, HideCircle
  GoSub, CntGlobalRButtonEnd
  SetTimer, _RemoveTooltip, -2200
Return
