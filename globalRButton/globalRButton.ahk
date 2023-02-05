RButtonPressCnt := 0
_RButtonTimerOut := 24
_RButtonTimerCnt := _RButtonTimerOut

#Include %A_ScriptDir%\globalRButton\_countRButton.ahk
#Include %A_ScriptDir%\globalRButton\watchEvent.ahk

GlobalRButton:
  GoSub, CntGlobalRButton
  MouseGetPos, mouseCursor_X, mouseCursor_Y, mouseCursor_Id
  ; WinGetTitle, mouseCursor_Title, ahk_id %mouseCursor_Id%
  ; WinGet, mouseCursor_ProcessName, ProcessName, %mouseCursor_Title%
  ; mouseCursor_Title := Trim(mouseCursor_Title)
  ; mouseCursor_ProcessName := Trim(mouseCursor_ProcessName)
  SetTimer, RButtonWatcher, 10
Return

GlobalRButtonEnd:
  GoSub, CntGlobalRButtonEnd
Return
