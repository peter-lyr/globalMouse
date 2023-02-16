Rightdown1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      MsgRightdown1_RightUp(0)
      GoSub, MinimizeWindow
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
    SomeThingDone := 1
  } else if (Flag_LeftDown == 1) {
    SomeThingDone := 1
    Flag_LeftDown := 0
  ; } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
    SomeThingDone := 1
    Flag_MButtonDown := 0
  ; } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    SomeThingDone := 1
    Flag_WheelDown := 0
    MsgRightdown1_WheelDown(0)
    GoSub, CtrlWinRight
  } else if (Flag_WheelUp == 1) {
    SomeThingDone := 1
    Flag_WheelUp := 0
    MsgRightdown1_WheelUp(0)
    GoSub, CtrlWinLeft
  } else {
    GetKeyState, LButtonSta, LButton, P
    GetKeyState, MButtonSta, MButton, P
    if (MButtonSta == "U" and LButtonSta == "U") {
      msg := ""
      if (Flag_RightUpCancel == 0) {
        MsgRightdown1_RightUp(1)
        GoSub, MinimizeWindowMsg
      }
      MsgRightdown1_WheelDown(1)
      MsgRightdown1_WheelUp(1)
      GoSub, CtrlWinLeftRightMsg
      tooltip, %msg%
    } else {
      GoSub, LMButton
    }
  }
Return
