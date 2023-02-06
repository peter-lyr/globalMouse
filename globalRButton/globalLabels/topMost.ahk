TopMostToggle:
  if (StrLen(mouseCursor_Title) > 0 and mouseCursor_Title != "Program Manager") {
    WinGet, Status, ExStyle, ahk_id %mouseCursor_Id%
    if (Status & 0x8) {
      Winset, AlwaysOnTop, Off, ahk_id %mouseCursor_Id%
      tooltip 已取消置顶：%mouseCursor_Title%
    } else {
      Winset, AlwaysOnTop, On, ahk_id %mouseCursor_Id%
      tooltip 已置顶：%mouseCursor_Title%
    }
  } else {
    Send, {Esc}
    tooltip
  }
Return

TopMostToggleMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (StrLen(mouseCursor_Title) > 0 and mouseCursor_Title != "Program Manager") {
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
