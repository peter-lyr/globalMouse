Rightdown1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
    }
  } else if (Flag_LeftDown == 1) {
  } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
  } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    GoSub, CtrlWinRight
  } else if (Flag_WheelUp == 1) {
    GoSub, CtrlWinLeft
  } else {
    msg := ""
    GoSub, CtrlWinLeftRightMsg
    tooltip, %msg%
  }
Return
