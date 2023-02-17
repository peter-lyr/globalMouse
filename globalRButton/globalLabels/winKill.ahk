WinKillDo(show) {
  global SelectedWindow_Id
  global SelectedWindow_Title
  if (show == 0) {
    if (!SelectedWindow_IsDesktop()) {
      WinKill, ahk_id %SelectedWindow_Id%
    }
  } else {
    if (!SelectedWindow_IsDesktop()) {
      _Msg := "松开右键: WinKill："
      _Msg .= SelectedWindow_Title
    } else {
      _Msg := "松开右键: 无法WinKill桌面"
    }
    PushMsg(_Msg)
  }
}
