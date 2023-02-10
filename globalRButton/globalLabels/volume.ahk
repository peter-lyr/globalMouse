VolumeUp:
  Send, {Volume_Up}
Return

VolumeDown:
  Send, {Volume_Down}
Return

VolumeMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "滚动滚轮: 改变音量"
Return
