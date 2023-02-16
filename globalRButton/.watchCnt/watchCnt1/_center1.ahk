Center1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
  } else if (Flag_LeftDown == 1) {
    SomeThingDone := 1
  ; } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
    SomeThingDone := 1
  ; } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    SomeThingDone := 1
    Flag_WheelDown := 0
    GoSub, ShiftWheelDown
  } else if (Flag_WheelUp == 1) {
    SomeThingDone := 1
    Flag_WheelUp := 0
    GoSub, ShiftWheelUp
  } else {
    GetKeyState, LButtonSta, LButton, P
    GetKeyState, MButtonSta, MButton, P
    if (MButtonSta == "U" and LButtonSta == "U") {
      msg := SelectedWindow_ProcessName
      if (Flag_RightUpCancel == 0) {
      }
      GoSub, ShiftWheelMsg
      tooltip, %msg%
    } else {
      GoSub, LMButton
    }
  }
Return
