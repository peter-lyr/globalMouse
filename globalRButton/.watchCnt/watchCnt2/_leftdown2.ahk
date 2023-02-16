Leftdown2:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      MsgLeftdown2_RightUp(0)
      GoSub, BatListRightUp
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
  } else if (Flag_LeftDown == 1) {
  ; } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
  ; } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    SomeThingDone := 1
    Flag_WheelDown := 0
    GoSub, BatListWheelDown
    Flag_RightUpCancel := 0
  } else if (Flag_WheelUp == 1) {
    SomeThingDone := 1
    Flag_WheelUp := 0
    GoSub, BatListWheelUp
    Flag_RightUpCancel := 0
  } else {
    msg := ""
    if (Flag_RightUpCancel == 0) {
      MsgLeftdown2_RightUp(1)
    }
    GoSub, BatListMsg
    tooltip, %msg%
  }
Return
