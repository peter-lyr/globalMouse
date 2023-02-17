VolumeUp(show) {
  if (show == 0) {
    Send, {Volume_Up}
  } else {
    PushMsg("向上滚轮: 提高音量")
  }
}

VolumeDown(show) {
  if (show == 0) {
    Send, {Volume_Down}
  } else {
    PushMsg("向下滚轮: 降低音量")
  }
}
