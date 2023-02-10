RButtonPressCnt := 0
_RButtonTimerOut := 12
_RButtonTimerCnt := _RButtonTimerOut

CircleSize := 90
CircleColor := "Red"

GoSub, InitCircle
GoSub, StartCheckMstsc
GoSub, BatListInit

Flag_SwapMouseButton := DllCall("SwapMouseButton")

#Include %A_ScriptDir%\globalRButton\_countRButton.ahk
#Include %A_ScriptDir%\globalRButton\_drawCircle.ahk
#Include %A_ScriptDir%\globalRButton\_watchEvent.ahk
#Include %A_ScriptDir%\globalRButton\_checkMsTsc.ahk

SendRButtonUpWatcher:
  if (_RButtonTimerCnt > _RButtonTimerOut) {
    SetTimer, SendRButtonUpWatcher, Off
    Click, Right
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
  PathCopied := 0
  SomeThingDone := 0
  Flag_RButtonDown := 1
  Flag_RightUpCancel := 0
  Flag_WheelUsed := 0
  GoSub, DrawCircle
  GoSub, CntGlobalRButton
  MouseGetPos, SelectedWindow_X, SelectedWindow_Y, SelectedWindow_Id
  WinActivate, ahk_id %SelectedWindow_Id%
  SelectedWindow(SelectedWindow_Id)
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
