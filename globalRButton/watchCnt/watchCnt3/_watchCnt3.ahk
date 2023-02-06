#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\center3.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\down3.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\left3.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\leftdown3.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\leftup3.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\right3.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\rightdown3.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\rightup3.ahk
#Include %A_ScriptDir%\globalRButton\watchCnt\watchCnt3\up3.ahk

WatchCnt3:
  if (Direction == "Center") {
    GoSub, Center3
  } else if (Direction == "Up") {
    GoSub, Up3
  } else if (Direction == "Down") {
    GoSub, Down3
  } else if (Direction == "Left") {
    GoSub, Left3
  } else if (Direction == "Right") {
    GoSub, Right3
  } else if (Direction == "RightUp") {
    GoSub, RightUp3
  } else if (Direction == "RightDown") {
    GoSub, RightDown3
  } else if (Direction == "LeftUp") {
    GoSub, LeftUp3
  } else if (Direction == "LeftDown") {
    GoSub, LeftDown3
  }
Return
