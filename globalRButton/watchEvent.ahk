Direction := ""

#Include %A_ScriptDir%\globalRButton\_calculateDirection.ahk

RButtonWatcher:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    SetTimer, RButtonWatcher, Off
    Return
  }
  GoSub, MouseCursor_Direction
  tooltip, %RButtonPressCnt% : %Direction%
Return

