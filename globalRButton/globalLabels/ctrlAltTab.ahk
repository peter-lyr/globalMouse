CtrlAltTab(show) {
  if (show == 0) {
    Send, {Alt Down}{Ctrl Down}{Tab}
    Send, {Alt Up}
    Send, {Ctrl Up}
    tooltip
  } else {
    PushMsg("松开右键: <Alt+Ctrl+TAb>")
  }
}
