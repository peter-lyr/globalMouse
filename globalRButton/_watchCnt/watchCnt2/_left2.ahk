Left2:
  if (Flag_RightUp == 1) {
    if (Flag_RightUpCancel == 0) {
      MsgLeft2_RightUp(0)
      GoSub, WinTab
    } else if (Flag_WheelUsed == 1) {
      tooltip
    }
  } else if (Flag_LeftDown == 1) {
    SomeThingDone := 1
    Flag_LeftDown := 0
    MsgLeft2_LeftDown(0)
  ; } else if (Flag_LeftUp == 1) {
  } else if (Flag_MButtonDown == 1) {
    SomeThingDone := 1
    Flag_MButtonDown := 0
    MsgLeft2_MButtonDown(0)
  ; } else if (Flag_MButtonUp == 1) {
  } else if (Flag_WheelDown == 1) {
    Flag_WheelDown := 0
    MsgLeft2_WheelDown(0)
    SomeThingDone := 1
    GoSub, SendPgDn40WheelDown
  } else if (Flag_WheelUp == 1) {
    Flag_WheelUp := 0
    MsgLeft2_WheelUp(0)
    SomeThingDone := 1
    GoSub, SendPgUp40WheelUp
  } else {
    msg := ""
    if (Flag_RightUpCancel == 0) {
      MsgLeft2_RightUp(1)
      GoSub, WinTabMsg
    }
    MsgLeft2_LeftDown(1)
    MsgLeft2_MButtonDown(1)
    MsgLeft2_WheelDown(1)
    MsgLeft2_WheelUp(1)
    GoSub, SendPgUpDn40Msg
    tooltip, %msg%
  }
Return
