Center1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
  } else if (Flag_LeftDown == 1) {
  } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
  } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    GoSub, ShiftWheelDown
    SomeThingDone := 1
    Flag_WheelDown := 0
  } else if (Flag_WheelUp == 1) {
    GoSub, ShiftWheelUp
    SomeThingDone := 1
    Flag_WheelUp := 0
  } else {
    msg := mouseCursor_ProcessName
    GoSub, ShiftWheelMsg
    tooltip, %msg%
  }
Return
