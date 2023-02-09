WinKill:
  if (!mouseCursor_IsDesktop()) {
    WinKill, ahk_id %mouseCursor_Id%
  }
Return

WinKillMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (!mouseCursor_IsDesktop()) {
    msg .= "松开右键WinKill："
    msg .= mouseCursor_Title
  } else {
    msg .= "松开右键无法WinKill桌面"
  }
Return
