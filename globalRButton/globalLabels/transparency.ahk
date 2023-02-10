TransparencyToggle:
  if (SelectedWindow_IsDesktop() == 0) {
    WinGet, CurTransparency, Transparent, ahk_id %SelectedWindow_Id%
    if (CurTransparency == "") {
      CurTransparency := 255
    }
    if (CurTransparency > 0 && CurTransparency < 255) {
      WinSet, Transparent, 255, ahk_id %SelectedWindow_Id%
    } else {
      WinSet, Transparent, 200, ahk_id %SelectedWindow_Id%
    }
    tooltip
  }
Return

TransparencyToggleMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (SelectedWindow_IsDesktop() == 0) {
    WinGet, CurTransparency, Transparent, ahk_id %SelectedWindow_Id%
    if (CurTransparency == "") {
      CurTransparency := 255
    }
    if (CurTransparency > 0 && CurTransparency < 255) {
      msg .= "松开右键不透明化："
      msg .= SelectedWindow_Title
    } else {
      msg .= "松开右键透明化："
      msg .= SelectedWindow_Title
    }
  } else {
    msg .= "松开右键无法透明化桌面"
  }
Return

TransparencySlideDown:
  if (SelectedWindow_IsDesktop() == 0) {
    WinGet, CurTransparency, Transparent, ahk_id %SelectedWindow_Id%
    if (CurTransparency == "") {
      CurTransparency := 255
    }
    CurTransparency -= 10
    if (CurTransparency < 1) {
      CurTransparency := 1
    }
    WinSet, Transparent, %CurTransparency%, ahk_id %SelectedWindow_Id%
  }
Return

TransparencySlideUp:
  if (SelectedWindow_IsDesktop() == 0) {
    WinGet, CurTransparency, Transparent, ahk_id %SelectedWindow_Id%
    if (CurTransparency == "") {
      CurTransparency := 255
    }
    CurTransparency += 10
    if (CurTransparency > 255) {
      CurTransparency := 255
    }
    WinSet, Transparent, %CurTransparency%, ahk_id %SelectedWindow_Id%
  }
Return

TransparencySlideMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (SelectedWindow_IsDesktop() == 0) {
    WinGet, CurTransparency, Transparent, ahk_id %SelectedWindow_Id%
    msg .= "滚动滚轮改变窗口透明度: "
    msg .= CurTransparency
  } else {
    msg .= "滚动滚轮无法透明化桌面"
  }
Return
