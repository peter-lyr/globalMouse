SendEsc:
  Send, {Esc}
Return

SendEscMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "发送Esc键"
Return
