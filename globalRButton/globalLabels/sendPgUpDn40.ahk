SendPgUp40WheelUp:
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
Return

SendPgDn40WheelDown:
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
Return

SendPgUpDn40Msg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "滚动滚轮：PgUp/Dn 40"
Return
