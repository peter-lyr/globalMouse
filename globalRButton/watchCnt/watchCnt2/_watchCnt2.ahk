#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\center2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\down2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\left2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\leftdown2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\leftup2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\right2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\rightdown2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\rightup2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\up2.ahk

WatchCnt2:
  if (Direction == "Center") {
    GoSub, Center2
  } else if (Direction == "Up") {
    GoSub, Up2
  } else if (Direction == "Down") {
    GoSub, Down2
  } else if (Direction == "Left") {
    GoSub, Left2
  } else if (Direction == "Right") {
    GoSub, Right2
  } else if (Direction == "RightUp") {
    GoSub, RightUp2
  } else if (Direction == "RightDown") {
    GoSub, RightDown2
  } else if (Direction == "LeftUp") {
    GoSub, LeftUp2
  } else if (Direction == "LeftDown") {
    GoSub, LeftDown2
  }
Return
