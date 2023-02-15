#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_center2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_down2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_left2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_leftdown2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_leftup2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_right2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_rightdown2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_rightup2.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt2\_up2.ahk

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
