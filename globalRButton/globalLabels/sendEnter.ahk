SendEnter(show) {
  if (show == 0) {
    Send, {Enter}
    tooltip
  } else {
    PushMsg("松开右键: 发送Enter键")
  }
}
