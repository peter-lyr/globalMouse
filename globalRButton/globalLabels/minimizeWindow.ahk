MinimizeWindow:
  if (SelectedWindow_IsDesktop() == 0) {
    WinMinimize, ahk_id %SelectedWindow_Id%
    tooltip
  }
Return

MinimizeWindowMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (SelectedWindow_IsDesktop() == 0) {
    msg .= "松开右键: 最小化："
    msg .= SelectedWindow_Title
  } else {
    msg .= "松开右键: 不允许最小化桌面"
  }
Return
