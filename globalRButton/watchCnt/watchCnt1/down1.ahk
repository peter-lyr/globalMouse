Down1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      GoSub, TransparencyToggle
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
    if (mouseCursor_IsToSendEsc() == 1) {
      Send, {Esc}
    }
  } else if (Flag_LeftDown == 1) {
  } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
  } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    GoSub, TransparencySlideDown
    Flag_WheelDown := 0
  } else if (Flag_WheelUp == 1) {
    GoSub, TransparencySlideUp
    Flag_WheelUp := 0
  } else {
    msg := ""
    if (Flag_RightUpCancel == 0) {
      GoSub, TransparencyToggleMsg
    }
    GoSub, TransparencySlideMsg
    tooltip, %msg%
  }
Return
