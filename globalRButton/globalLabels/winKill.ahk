WinKill:
  if (!SelectedWindow_IsDesktop()) {
    WinKill, ahk_id %SelectedWindow_Id%
  }
Return

WinKillMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (!SelectedWindow_IsDesktop()) {
    msg .= "松开右键: WinKill："
    msg .= SelectedWindow_Title
  } else {
    msg .= "松开右键: 无法WinKill桌面"
  }
Return
