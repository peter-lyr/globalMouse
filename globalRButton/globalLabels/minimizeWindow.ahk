MinimizeWindow(show) {
  global SelectedWindow_Id
  global SelectedWindow_Title
  if (show == 0) {
    if (SelectedWindow_IsDesktop() == 0) {
      WinMinimize, ahk_id %SelectedWindow_Id%
      tooltip
    }
  } else {
    if (SelectedWindow_IsDesktop() == 0) {
      _Msg := "松开右键: 最小化："
      _Msg .= SelectedWindow_Title
    } else {
      _Msg := "松开右键: 不允许最小化桌面"
    }
    PushMsg(_Msg)
  }
}
