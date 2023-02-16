RestoreMaximizeWindow(show) {
  global SelectedWindow_Id
  global SelectedWindow_Title
  if (show == 0) {
    if (SelectedWindow_IsDesktop() == 0) {
      WinGet, _status, MinMax, ahk_id %SelectedWindow_Id%
      if (_status == 0) {
        WinMaximize, ahk_id %SelectedWindow_Id%
      } else {
        WinRestore, ahk_id %SelectedWindow_Id%
      }
      tooltip
    }
  } else {
    if (SelectedWindow_IsDesktop() == 0) {
      WinGet, _status, MinMax, ahk_id %SelectedWindow_Id%
      if (_status == 0) {
        _Msg := "松开右键: 最大化窗口："
        _Msg .= Trim(SelectedWindow_Title)
      } else {
        _Msg := "松开右键: 恢复窗口："
        _Msg .= Trim(SelectedWindow_Title)
      }
      PushMsg(_Msg)
    }
  }
}
