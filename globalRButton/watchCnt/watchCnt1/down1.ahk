Down1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      GoSub, TransparencyToggle
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
    SomeThingDone := 1
  } else if (Flag_LeftDown == 1) {
    SomeThingDone := 1
  ; } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
    SomeThingDone := 1
  ; } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    SomeThingDone := 1
    Flag_WheelDown := 0
    GoSub, TransparencySlideDown
  } else if (Flag_WheelUp == 1) {
    SomeThingDone := 1
    Flag_WheelUp := 0
    GoSub, TransparencySlideUp
  } else {
    GetKeyState, LButtonSta, LButton, P
    GetKeyState, MButtonSta, MButton, P
    if (MButtonSta == "U" and LButtonSta == "U") {
      msg := ""
      if (Flag_RightUpCancel == 0) {
        GoSub, TransparencyToggleMsg
      }
      GoSub, TransparencySlideMsg
      tooltip, %msg%
    } else {
      if (MButtonSta == "D") {
        tooltip, 松开右键: 撤销窗口大小改变`n松开中键: 确定
      } else if (LButtonSta == "D") {
        tooltip, 松开右键: 撤销窗口移动`n松开左键: 确定
      }
    }
  }
Return
