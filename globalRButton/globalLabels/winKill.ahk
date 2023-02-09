WinKill:
  if (!mouseCursor_IsDesktop()) {
    WinKill, ahk_id %mouseWin%
  }
Return

WinKillMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= "松开右键: WinKill"
Return
