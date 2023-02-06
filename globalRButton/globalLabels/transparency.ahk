TransparencyToggle:
  if (mouseCursor_IsDesktop() == 0) {
    WinGet, CurTransparency, Transparent, ahk_id %mouseCursor_Id%
    if (CurTransparency == "") {
      CurTransparency := 255
    }
    if (CurTransparency > 0 && CurTransparency < 255) {
      WinSet, Transparent, 255, ahk_id %mouseCursor_Id%
    } else {
      WinSet, Transparent, 200, ahk_id %mouseCursor_Id%
    }
    tooltip
  }
Return

TransparencyToggleMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (mouseCursor_IsDesktop() == 0) {
    WinGet, CurTransparency, Transparent, ahk_id %mouseCursor_Id%
    if (CurTransparency == "") {
      CurTransparency := 255
    }
    if (CurTransparency > 0 && CurTransparency < 255) {
      msg .= "不透明化："
      msg .= mouseCursor_Title
    } else {
      msg .= "透明化："
      msg .= mouseCursor_Title
    }
  } else {
    msg .= "无法透明化桌面"
  }
Return
