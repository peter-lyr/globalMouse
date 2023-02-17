Center2:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      MsgCenter2_RightUp(0)
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
  } else if (Flag_LeftDown == 1) {
    SomeThingDone := 1
    Flag_LeftDown := 0
    MsgCenter2_LeftDown(0)
  ; } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
    SomeThingDone := 1
    Flag_MButtonDown := 0
    MsgCenter2_MButtonDown(0)
    GoSub, WinV
  ; } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    Flag_WheelDown := 0
    MsgCenter2_WheelDown(0)
    SomeThingDone := 1
    GoSub, SendLeftWheelUp
  } else if (Flag_WheelUp == 1) {
    Flag_WheelUp := 0
    MsgCenter2_WheelUp(0)
    SomeThingDone := 1
    GoSub, SendRightWheelDown
  } else {
    msg := ""
    if (Flag_RightUpCancel == 0) {
      MsgCenter2_RightUp(1)
    }
    MsgCenter2_LeftDown(1)
    MsgCenter2_MButtonDown(1)
    MsgCenter2_WheelDown(1)
    MsgCenter2_WheelUp(1)
    GoSub, WinVMsg
    GoSub, SendLeftRightMsg
    tooltip, %msg%
  }
Return
