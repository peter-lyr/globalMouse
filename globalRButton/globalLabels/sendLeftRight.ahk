SendLeftWheelUp:
  Send, {Left}
Return

SendRightWheelDown:
  Send, {Right}
Return

SendLeftRightMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "滚动滚轮: 左右键"
Return
