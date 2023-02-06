TopMostToggle:
  if (mouseCursor_IsDesktop() == 0) {
    WinGet, Status, ExStyle, ahk_id %mouseCursor_Id%
    if (Status & 0x8) {
      Winset, AlwaysOnTop, Off, ahk_id %mouseCursor_Id%
      tooltip 已取消置顶：%mouseCursor_Title%
    } else {
      Winset, AlwaysOnTop, On, ahk_id %mouseCursor_Id%
      tooltip 已置顶：%mouseCursor_Title%
    }
  } else {
    tooltip
  }
Return

TopMostToggleMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (mouseCursor_IsDesktop() == 0) {
    WinGet, Status, ExStyle, ahk_id %mouseCursor_Id%
    if (Status & 0x8) {
      msg .= "取消置顶："
      msg .= mouseCursor_Title
    } else {
      msg .= "置顶："
      msg .= mouseCursor_Title
    }
  } else {
    msg .= "无法置顶桌面"
  }
Return
