#Include %A_ScriptDir%\globalRButton\.watchCnt\watchCnt1\_center1.ahk
#Include %A_ScriptDir%\globalRButton\.watchCnt\watchCnt1\_down1.ahk
#Include %A_ScriptDir%\globalRButton\.watchCnt\watchCnt1\_left1.ahk
#Include %A_ScriptDir%\globalRButton\.watchCnt\watchCnt1\_leftdown1.ahk
#Include %A_ScriptDir%\globalRButton\.watchCnt\watchCnt1\_leftup1.ahk
#Include %A_ScriptDir%\globalRButton\.watchCnt\watchCnt1\_right1.ahk
#Include %A_ScriptDir%\globalRButton\.watchCnt\watchCnt1\_rightdown1.ahk
#Include %A_ScriptDir%\globalRButton\.watchCnt\watchCnt1\_rightup1.ahk
#Include %A_ScriptDir%\globalRButton\.watchCnt\watchCnt1\_up1.ahk

WatchCnt1:
  if (Direction == "Center") {
    GoSub, Center1
  } else if (Direction == "Up") {
    GoSub, Up1
  } else if (Direction == "Down") {
    GoSub, Down1
  } else if (Direction == "Left") {
    GoSub, Left1
  } else if (Direction == "Right") {
    GoSub, Right1
  } else if (Direction == "RightUp") {
    GoSub, RightUp1
  } else if (Direction == "RightDown") {
    GoSub, RightDown1
  } else if (Direction == "LeftUp") {
    GoSub, LeftUp1
  } else if (Direction == "LeftDown") {
    GoSub, LeftDown1
  }
Return
