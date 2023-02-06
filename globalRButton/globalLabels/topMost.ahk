TopMostToggle:
  if (StrLen(mouseCursor_Title) > 0 and mouseCursor_Title != "Program Manager") {
    WinGet, Status, ExStyle, ahk_id %mouseCursor_Id%
    if (Status & 0x8) {
      Winset, AlwaysOnTop, Off, ahk_id %mouseCursor_Id%
      tooltip %mouseCursor_Title%`ntopmost canceled
    } else {
      Winset, AlwaysOnTop, On, ahk_id %mouseCursor_Id%
      tooltip %mouseCursor_Title%`nalready topmost
    }
  }
Return

TopMostToggleMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "release RButton: topmost toggle"
Return
