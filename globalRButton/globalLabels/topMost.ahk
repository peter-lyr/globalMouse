TopMostToggle(show) {
  global SelectedWindow_Title
  global SelectedWindow_Id
  if (show == 0) {
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
  } else {
    if (SelectedWindow_IsDesktop() == 0) {
      WinGet, Status, ExStyle, ahk_id %SelectedWindow_Id%
      if (Status & 0x8) {
        _Msg := "松开右键: 取消置顶："
        _Msg .= SelectedWindow_Title
      } else {
        _Msg := "松开右键: 置顶："
        _Msg .= SelectedWindow_Title
      }
    } else {
      _Msg := "松开右键: 无法置顶桌面"
    }
    PushMsg(_Msg)
  }
}
