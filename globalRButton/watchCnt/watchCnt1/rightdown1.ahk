Rightdown1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      GoSub, MinimizeWindow
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
  } else if (Flag_LeftDown == 1) {
  } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
  } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    GoSub, CtrlWinRight
    Flag_WheelDown := 0
  } else if (Flag_WheelUp == 1) {
    GoSub, CtrlWinLeft
    Flag_WheelUp := 0
  } else {
    msg := ""
    GoSub, CtrlWinLeftRightMsg
    if (Flag_RightUpCancel == 0) {
      GoSub, MinimizeWindowMsg
    }
    tooltip, %msg%
  }
Return
