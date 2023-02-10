SendEnter:
  Send, {Enter}
Return

SendEnterMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键: 发送Enter键"
Return
