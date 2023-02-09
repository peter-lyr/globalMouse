WinKill:
  if (!mouseCursor_IsDesktop()) {
    WinKill, ahk_id %mouseCursor_Id%
  }
Return

WinKillMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键: WinKill"
  msg .= mouseCursor_Title
Return
