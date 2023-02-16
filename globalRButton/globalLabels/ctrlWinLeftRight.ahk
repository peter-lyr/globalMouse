CtrlWinRight(show) {
  if (show == 0) {
    Send, {Ctrl Down}{LWin Down}{Right}
    Send, {Ctrl Up}
    Send, {LWin Up}
  } else {
    PushMsg("向下滚轮: 切换下一个虚拟桌面")
  }
}
Return

CtrlWinLeft(show) {
  if (show == 0) {
    Send, {Ctrl Down}{LWin Down}{Left}
    Send, {Ctrl Up}
    Send, {LWin Up}
  } else {
    PushMsg("向上滚轮: 切换上一个虚拟桌面")
  }
}
Return
