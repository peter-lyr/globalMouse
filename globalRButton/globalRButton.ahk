RButtonPressCnt := 0
_RButtonTimerOut := 24
_RButtonTimerCnt := _RButtonTimerOut

CircleSize := 90
CircleColor := "Red"

GoSub, InitCircle

#Include %A_ScriptDir%\globalRButton\_countRButton.ahk
#Include %A_ScriptDir%\globalRButton\_drawCircle.ahk
#Include %A_ScriptDir%\globalRButton\_watchEvent.ahk

_RemoveTooltip:
  tooltip
Return

GlobalRButton:
  Flag_RightUpCancel := 0
  Flag_WheelUsed := 0
  GoSub, DrawCircle
  GoSub, CntGlobalRButton
  MouseGetPos, mouseCursor_X, mouseCursor_Y, mouseCursor_Id
  WinGetTitle, mouseCursor_Title, ahk_id %mouseCursor_Id%
  WinGet, mouseCursor_ProcessName, ProcessName, %mouseCursor_Title%
  mouseCursor_Title := Trim(mouseCursor_Title)
  mouseCursor_ProcessName := Trim(mouseCursor_ProcessName)
  SetTimer, RButtonWatcher, 10
Return

GlobalRButtonEnd:
  GoSub, HideCircle
  SetTimer, DrawCircle1S, Off
  GoSub, CntGlobalRButtonEnd
  SetTimer, _RemoveTooltip, -2200
Return
