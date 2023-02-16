ShiftWheelUp(show) {
  if (show == 0) {
    Send, {Shift Down}{WheelUp}
    Send, {Shift Up}
  } else {
    PushMsg("向上滚轮: <Whift-WheelUp>")
  }
}

ShiftWheelDown(show) {
  if (show == 0) {
    Send, {Shift Down}{WheelDown}
    Send, {Shift Up}
  } else {
    PushMsg("向下滚轮: <Whift-WheelDown>")
  }
}
