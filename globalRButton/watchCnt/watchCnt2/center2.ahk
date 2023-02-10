Center2:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
  } else if (Flag_LeftDown == 1) {
    SomeThingDone := 1
    Flag_LeftDown := 0
    GoSub, CtrlCCopy
  ; } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
    SomeThingDone := 1
    Flag_LeftDown := 0
    GoSub, WinV
  ; } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    Flag_WheelDown := 0
    SomeThingDone := 1
    GoSub, SendRightWheelDown
  } else if (Flag_WheelUp == 1) {
    Flag_WheelUp := 0
    SomeThingDone := 1
    GoSub, SendLeftWheelUp
  } else {
    msg := ""
    if (Flag_RightUpCancel == 0) {
    }
    GoSub, CtrlCCopyMsg
    GoSub, WinVMsg
    GoSub, SendLeftRightMsg
    tooltip, %msg%
  }
Return
