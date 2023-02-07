MinimizeWindow:
  if (mouseCursor_IsDesktop() == 0) {
    WinMinimize, ahk_id %mouseCursor_Id%
    tooltip
  }
Return

MinimizeWindowMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (mouseCursor_IsDesktop() == 0) {
    msg .= "松开右键最小化"
    msg .= mouseCursor_Title
  } else {
    msg .= "不允许最小化桌面"
  }
Return
