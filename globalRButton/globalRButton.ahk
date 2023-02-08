RButtonPressCnt := 0
_RButtonTimerOut := 8
_RButtonTimerCnt := _RButtonTimerOut

CircleSize := 90
CircleColor := "Red"

GoSub, InitCircle

Flag_SwapMouseButton := DllCall("SwapMouseButton")

#Include %A_ScriptDir%\globalRButton\_countRButton.ahk
#Include %A_ScriptDir%\globalRButton\_drawCircle.ahk
#Include %A_ScriptDir%\globalRButton\_watchEvent.ahk

SendRButtonUpWatcher:
  if (_RButtonTimerCnt > _RButtonTimerOut) {
    SetTimer, SendRButtonUpWatcher, Off
    if (Flag_SwapMouseButton) {
      Send, {LButton}
    } else {
      Send, {RButton}
    }
  }
Return

SendRButtonUp:
  if (SomeThingDone == 0 and Direction == "Center") {
    SetTimer, SendRButtonUpWatcher, 10
  }
Return

_RemoveTooltip:
  tooltip
Return

GlobalRButton:
  SetTimer, SendRButtonUpWatcher, Off
  SomeThingDone := 0
  Flag_RButtonDown := 1
  Flag_RightUpCancel := 0
  Flag_WheelUsed := 0
  GoSub, DrawCircle
  GoSub, CntGlobalRButton
  MouseGetPos, mouseCursor_X, mouseCursor_Y, mouseCursor_Id
  WinActivate, ahk_id %mouseCursor_Id%
  WinGetTitle, mouseCursor_Title, ahk_id %mouseCursor_Id%
  WinGet, mouseCursor_ProcessName, ProcessName, %mouseCursor_Title%
  mouseCursor_Title := Trim(mouseCursor_Title)
  mouseCursor_ProcessName := Trim(mouseCursor_ProcessName)
  SetTimer, RButtonWatcher, 10
Return

GlobalRButtonEnd:
  GoSub, SendRButtonUp
  Flag_RButtonDown := 0
  SetTimer, DrawCircle1S, Off
  GoSub, HideCircle
  GoSub, CntGlobalRButtonEnd
  SetTimer, _RemoveTooltip, -2200
Return
