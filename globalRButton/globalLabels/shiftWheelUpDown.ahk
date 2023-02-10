ShiftWheelUp:
  Send, {Shift Down}{WheelUp}
  Send, {Shift Up}
Return

ShiftWheelDown:
  Send, {Shift Down}{WheelDown}
  Send, {Shift Up}
Return

ShiftWheelMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "滚动滚轮: <Shift-WheelUp/Down>"
Return
