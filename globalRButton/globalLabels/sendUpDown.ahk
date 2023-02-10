SendUpWheelUp:
  Send, {Up}
Return

SendDownWheelDown:
  Send, {Down}
Return

SendUpDownMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "滚动滚轮: 上下键"
Return
