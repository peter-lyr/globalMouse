SendPgUp40WheelUp:
  Loop 40
  {
    Send, {PgUp}
    GetKeyState, _RButtonStatus, RButton, P
    if (_RButtonStatus == "U") {
      break
    }
  }
Return

SendPgDn40WheelDown:
  Loop 40
  {
    Send, {PgDn}
    GetKeyState, _RButtonStatus, RButton, P
    if (_RButtonStatus == "U") {
      break
    }
  }
Return

SendPgUpDn40Msg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "滚动滚轮：PgUp/Dn 40"
Return
