RestoreMaximizeWindow:
  if (SelectedWindow_IsDesktop() == 0) {
    WinGet, _status, MinMax, ahk_id %SelectedWindow_Id%
    if (_status == 0) {
      WinMaximize, ahk_id %SelectedWindow_Id%
    } else {
      WinRestore, ahk_id %SelectedWindow_Id%
    }
    tooltip
  }
Return

RestoreMaximizeWindowMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (SelectedWindow_IsDesktop() == 0) {
    WinGet, _status, MinMax, ahk_id %SelectedWindow_Id%
    if (_status == 0) {
      msg .= "松开右键最大化窗口："
      msg .= Trim(SelectedWindow_Title)
    } else {
      msg .= "松开右键恢复窗口："
      msg .= Trim(SelectedWindow_Title)
    }
  }
Return
