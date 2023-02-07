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

TransparencySlideDown:
  if (mouseCursor_IsDesktop() == 0) {
    WinGet, CurTransparency, Transparent, ahk_id %mouseCursor_Id%
    if (CurTransparency == "") {
      CurTransparency := 255
    }
    CurTransparency -= 10
    if (CurTransparency < 1) {
      CurTransparency := 1
    }
    WinSet, Transparent, %CurTransparency%, ahk_id %mouseCursor_Id%
  }
Return

TransparencySlideUp:
  if (mouseCursor_IsDesktop() == 0) {
    WinGet, CurTransparency, Transparent, ahk_id %mouseCursor_Id%
    if (CurTransparency == "") {
      CurTransparency := 255
    }
    CurTransparency += 10
    if (CurTransparency > 255) {
      CurTransparency := 255
    }
    WinSet, Transparent, %CurTransparency%, ahk_id %mouseCursor_Id%
  }
Return

TransparencySlideMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (mouseCursor_IsDesktop() == 0) {
    msg .= "滚动滚轮改变透明度"
  } else {
    msg .= "无法透明化桌面"
  }
Return
