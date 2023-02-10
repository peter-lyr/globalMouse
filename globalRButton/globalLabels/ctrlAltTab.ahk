CtrlAltTab:
  Send, {Alt Down}{Ctrl Down}{Tab}
  Send, {Alt Up}
  Send, {Ctrl Up}
  tooltip
Return

ctrlAltTabMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键: <Alt+Ctrl+TAb>"
Return
