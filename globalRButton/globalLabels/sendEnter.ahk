SendEnter:
  Send, {Enter}
Return

SendEnterMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "发送Enter键"
Return
