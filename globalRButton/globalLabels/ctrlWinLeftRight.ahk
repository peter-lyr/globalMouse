CtrlWinRight:
  Send, {Ctrl Down}{LWin Down}{Right}
  Send, {Ctrl Up}
  Send, {LWin Up}
Return

CtrlWinLeft:
  Send, {Ctrl Down}{LWin Down}{Left}
  Send, {Ctrl Up}
  Send, {LWin Up}
Return

CtrlWinLeftRightMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "滚动滚轮: 切换虚拟桌面"
Return
