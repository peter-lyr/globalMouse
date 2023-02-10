AltTab:
  Send, {Alt Down}{Tab}
  Send, {Alt Up}
  tooltip
Return

AltTabMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键: <Alt-Tab>"
Return
