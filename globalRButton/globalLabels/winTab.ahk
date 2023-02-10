WinTab:
  Send, {LWin Down}{Tab}
  Send, {LWin Up}
  tooltip
Return

WinTabMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键: <Win+TAb>"
Return
