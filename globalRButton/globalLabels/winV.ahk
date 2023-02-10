WinV:
  Send, {LWin Down}v
  Send, {LWin Up}
  tooltip
Return

WinVMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "单击中键<Win-V>"
Return
