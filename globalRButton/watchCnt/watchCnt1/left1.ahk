Left1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      GoSub, CtrlAltTab
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
    SomeThingDone := 1
  } else if (Flag_LeftDown == 1) {
  } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
  } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    GoSub, SendPgDnWheelDown
    Flag_WheelDown := 0
    SomeThingDone := 1
  } else if (Flag_WheelUp == 1) {
    GoSub, SendPgUpWheelUp
    Flag_WheelUp := 0
    SomeThingDone := 1
  } else {
    msg := ""
    GoSub, SendPgUpDnMsg
    tooltip, %msg%
  }
Return
