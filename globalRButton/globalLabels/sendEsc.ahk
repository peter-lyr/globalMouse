SendEsc(show) {
  if (show == 0) {
    Send, {Esc}
    tooltip
  } else {
    PushMsg("松开右键: 发送Esc键")
  }
}
