AltTab(show) {
  global msg
  if (show == 0) {
    Send, {Alt Down}{Tab}
    Send, {Alt Up}
    tooltip
  } else {
    PushMsg("松开右键: <Alt-Tab>")
  }
}
