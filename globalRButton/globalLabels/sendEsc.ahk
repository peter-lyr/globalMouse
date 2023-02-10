SendEsc:
  Send, {Esc}
Return

SendEscMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键: 发送Esc键"
Return
