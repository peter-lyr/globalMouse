Up1:
  if (Flag_RightUp == 1) {
    GoSub, TopMostToggle
  } else if (Flag_LeftDown == 1) {
  } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
  } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
  } else if (Flag_WheelUp == 1) {
  } else {
    msg := ""
    GoSub, TopMostToggleMsg
    tooltip, %msg%
  }
Return
