WinV:
  Send, {LWin Down}v
  Send, {LWin Up}
  tooltip
Return

WinVMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键<Win-V>"
Return
