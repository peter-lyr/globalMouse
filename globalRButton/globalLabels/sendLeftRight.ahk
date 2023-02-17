SendLeftWheelUp(show) {
  if (show == 0) {
    Send, {Left}
  } else {
    PushMsg("向上滚轮: Left")
  }
}

SendRightWheelDown(show) {
  if (show == 0) {
    Send, {Right}
  } else {
    PushMsg("向下滚轮: Right")
  }
}
