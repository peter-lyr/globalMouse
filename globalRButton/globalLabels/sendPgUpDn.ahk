SendPgUpWheelUp:
  Send, {PgUp}
Return

SendPgDnWheelDown:
  Send, {PgDn}
Return

SendPgUpDnMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "滚动滚轮：PgUp/Dn"
Return
