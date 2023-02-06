RestoreMaximizeWindow:
  if (mouseCursor_IsDesktop() == 0) {
    WinGet, _status, MinMax, ahk_id %mouseCursor_Id%
    if (_status == 0) {
      WinMaximize, ahk_id %mouseCursor_Id%
    } else {
      WinRestore, ahk_id %mouseCursor_Id%
    }
  }
Return

RestoreMaximizeWindowMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (mouseCursor_IsDesktop() == 0) {
    WinGet, _status, MinMax, ahk_id %mouseCursor_Id%
    if (_status == 0) {
      msg .= "松开右键最大化窗口："
      msg .= Trim(mouseCursor_Title)
    } else {
      msg .= "松开右键恢复窗口："
      msg .= Trim(mouseCursor_Title)
    }
  }
Return
