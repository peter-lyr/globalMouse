SendPgUp40WheelUp(show) {
  global PgDn40Cnt
  global Flag_WheelDown
  if (show == 0) {
    while PgDn40Cnt < 40
    {
      if (Flag_WheelDown == 1) {
        Break
      }
      PgDn40Cnt += 1
      Send, {PgUp}
      GetKeyState, _RButtonStatus, RButton, P
      if (_RButtonStatus == "U") {
        Break
      }
    }
  } else {
    PushMsg("向上滚轮: PgUp 40")
  }
}

SendPgDn40WheelDown(show) {
  global PgDn40Cnt
  global Flag_WheelUp
  if (show == 0) {
    while PgDn40Cnt < 40
    {
      if (Flag_WheelUp == 1) {
        Break
      }
      PgDn40Cnt += 1
      Send, {PgDn}
      GetKeyState, _RButtonStatus, RButton, P
      if (_RButtonStatus == "U") {
        Break
      }
    }
  } else {
    PushMsg("向下滚轮: PgDn 40")
  }
}

