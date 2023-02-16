Rightup1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      MsgRightup1_RightUp(0)
      GoSub, RestoreMaximizeWindow
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
    MsgRightup1_WheelDown(0)
    GoSub, ExplorerNavigateBackward
  } else if (Flag_WheelUp == 1) {
    SomeThingDone := 1
    Flag_WheelUp := 0
    MsgRightup1_WheelUp(0)
    GoSub, ExplorerNavigateForward
  } else {
    GetKeyState, LButtonSta, LButton, P
    GetKeyState, MButtonSta, MButton, P
    if (MButtonSta == "U" and LButtonSta == "U") {
      msg := ""
      if (Flag_RightUpCancel == 0) {
        MsgRightup1_RightUp(1)
        GoSub, RestoreMaximizeWindowMsg
      }
      MsgRightup1_WheelDown(1)
      MsgRightup1_WheelUp(1)
      GoSub, ExplorerNavigateForwardBackwardMsg
      tooltip, %msg%
    } else {
      GoSub, LMButton
    }
  }
Return
