Center2:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
  } else if (Flag_LeftDown == 1) {
    GoSub, ExplorerCopyPath
    SomeThingDone := 1
    Flag_LeftDown := 0
  } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
    GoSub, WinV
    SomeThingDone := 1
    Flag_LeftDown := 0
  } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    GoSub, SendRightWheelDown
    Flag_WheelDown := 0
    SomeThingDone := 1
  } else if (Flag_WheelUp == 1) {
    GoSub, SendLeftWheelUp
    Flag_WheelUp := 0
    SomeThingDone := 1
  } else {
    msg := ""
    GoSub, ExplorerCopyPathMsg
    GoSub, WinVMsg
    GoSub, SendLeftRightMsg
    tooltip, %msg%
  }
Return
