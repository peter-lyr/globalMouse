SendUpWheelUp(show) {
  if (show == 0) {
    Send, {Up}
  } else {
    PushMsg("向上滚轮: 上键")
  }
}

SendDownWheelDown(show) {
  if (show == 0) {
    Send, {Down}
  } else {
    PushMsg("向下滚轮: 下键")
  }
}
