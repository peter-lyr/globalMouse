SendCtrlC:
  Send, {Ctrl Down}{C}
  Send, {Ctrl Up}
Return

SendCtrlCMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键发送<Ctrl-C>"
Return
