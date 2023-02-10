TopMostToggle:
  if (SelectedWindow_IsDesktop() == 0) {
    WinGet, Status, ExStyle, ahk_id %SelectedWindow_Id%
    if (Status & 0x8) {
      Winset, AlwaysOnTop, Off, ahk_id %SelectedWindow_Id%
      tooltip 已取消置顶：%SelectedWindow_Title%
    } else {
      Winset, AlwaysOnTop, On, ahk_id %SelectedWindow_Id%
      tooltip 已置顶：%SelectedWindow_Title%
    }
  }
Return

TopMostToggleMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (SelectedWindow_IsDesktop() == 0) {
    WinGet, Status, ExStyle, ahk_id %SelectedWindow_Id%
    if (Status & 0x8) {
      msg .= "松开右键取消置顶："
      msg .= SelectedWindow_Title
    } else {
      msg .= "松开右键置顶："
      msg .= SelectedWindow_Title
    }
  } else {
    msg .= "松开右键无法置顶桌面"
  }
Return
