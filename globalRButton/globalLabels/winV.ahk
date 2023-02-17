WinV(show) {
  if (show == 0) {
    Send, {LWin Down}v
    Send, {LWin Up}
    tooltip
  } else {
    PushMsg("单击中键: <Win-V>")
  }
}
