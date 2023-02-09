SendEsc:
  Send, {Esc}
Return

SendEscMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键发送Esc键"
Return
