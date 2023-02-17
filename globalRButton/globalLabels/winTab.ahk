WinTab(show) {
  if (show == 0) {
    Send, {LWin Down}{Tab}
    Send, {LWin Up}
    tooltip
  } else {
    PushMsg("松开右键: <Win+TAb>")
  }
}
