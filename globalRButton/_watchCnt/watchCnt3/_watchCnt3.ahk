#Include %A_ScriptDir%\globalRButton\_watchCnt\watchCnt3\_center3.ahk
#Include %A_ScriptDir%\globalRButton\_watchCnt\watchCnt3\_down3.ahk
#Include %A_ScriptDir%\globalRButton\_watchCnt\watchCnt3\_left3.ahk
#Include %A_ScriptDir%\globalRButton\_watchCnt\watchCnt3\_leftdown3.ahk
#Include %A_ScriptDir%\globalRButton\_watchCnt\watchCnt3\_leftup3.ahk
#Include %A_ScriptDir%\globalRButton\_watchCnt\watchCnt3\_right3.ahk
#Include %A_ScriptDir%\globalRButton\_watchCnt\watchCnt3\_rightdown3.ahk
#Include %A_ScriptDir%\globalRButton\_watchCnt\watchCnt3\_rightup3.ahk
#Include %A_ScriptDir%\globalRButton\_watchCnt\watchCnt3\_up3.ahk

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
