TransparencyToggle:
  if (Flag_RightUpCancel == 0) {
    if (mouseCursor_IsDesktop() == 0) {
      WinGet, CurTransparency, Transparent, ahk_id %mouseCursor_Id%
      if (CurTransparency == "") {
        CurTransparency := 255
      }
      if (CurTransparency > 0 && CurTransparency < 255) {
        WinSet, Transparent, 255, ahk_id %mouseCursor_Id%
        tooltip 已取消透明化：%mouseCursor_Title%
      } else {
        WinSet, Transparent, 200, ahk_id %mouseCursor_Id%
        tooltip 已透明化：%mouseCursor_Title%
      }
    } else {
      tooltip
    }
  } else {
    tooltip
  }
  if (mouseCursor_IsToSendEsc() == 1) {
    Send, {Esc}
  }
Return

TransparencyToggleMsg:
  if (Flag_RightUpCancel == 0) {
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
  }
Return
