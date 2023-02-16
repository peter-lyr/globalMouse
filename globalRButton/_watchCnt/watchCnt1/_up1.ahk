Up1:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      MsgUp1_RightUp(0)
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
    MsgUp1_WheelDown(0)
    GoSub, VolumeDown
  } else if (Flag_WheelUp == 1) {
    SomeThingDone := 1
    Flag_WheelUp := 0
    MsgUp1_WheelUp(0)
    GoSub, VolumeUp
  } else {
    GetKeyState, LButtonSta, LButton, P
    GetKeyState, MButtonSta, MButton, P
    if (MButtonSta == "U" and LButtonSta == "U") {
      msg := ""
      if (Flag_RightUpCancel == 0) {
        MsgUp1_RightUp(1)
      }
      MsgUp1_WheelDown(1)
      MsgUp1_WheelUp(1)
      GoSub, VolumeMsg
      tooltip, %msg%
    } else {
      GoSub, LMButton
    }
  }
Return
