Leftdown1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      GoSub, BatListRightUp
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
  } else if (Flag_LeftDown == 1) {
  } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
  } else if (Flag_MButtonUp == 1) {
    GoSub, BatListWheelUp
  } else if (Flag_WheelDown == 1) {
    GoSub, BatListWheelDown
  } else if (Flag_WheelUp == 1) {
  } else {
    msg := ""
    GoSub, BatListMsg
    tooltip, %msg%
  }
Return
