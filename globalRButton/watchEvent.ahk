Direction := ""

#Include %A_ScriptDir%\globalRButton\_calculateDirection.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt1.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt3.ahk

RButtonWatcher:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    SetTimer, RButtonWatcher, Off
    Return
  }
  GoSub, MouseCursor_Direction
  if (RButtonPressCnt == 1) {
    GoSub, WatchCnt1
  } else if (RButtonPressCnt == 2) {
    GoSub, WatchCnt2
  } else if (RButtonPressCnt == 3) {
    GoSub, WatchCnt3
  }
Return

