Direction := ""

#Include %A_ScriptDir%\globalRButton\_utils.ahk
#Include %A_ScriptDir%\globalRButton\includeLabels.ahk
#Include %A_ScriptDir%\globalRButton\_includeMessages.ahk
#Include %A_ScriptDir%\globalRButton\_calculateDirection.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt1\_watchCnt1.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_watchCnt2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\_watchCnt3.ahk

RButtonWatcher:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    SetTimer, RButtonWatcher, Off
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
