TransparencyToggle(show) {
  global SelectedWindow_Id
  global SelectedWindow_Title
  if (show == 0) {
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
  } else {
    if (SelectedWindow_IsDesktop() == 0) {
      WinGet, CurTransparency, Transparent, ahk_id %SelectedWindow_Id%
      if (CurTransparency == "") {
        CurTransparency := 255
      }
      if (CurTransparency > 0 && CurTransparency < 255) {
        _Msg .= "松开右键: 不透明化："
        _Msg .= SelectedWindow_Title
      } else {
        _Msg .= "松开右键: 透明化："
        _Msg .= SelectedWindow_Title
      }
    } else {
      _Msg .= "松开右键: 无法透明化桌面"
    }
    PushMsg(_Msg)
  }
}

TransparencyDown(show) {
  global SelectedWindow_Id
  global SelectedWindow_Title
  if (show == 0) {
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
  } else {
    if (SelectedWindow_IsDesktop() == 0) {
      WinGet, CurTransparency, Transparent, ahk_id %SelectedWindow_Id%
      _Msg .= "向下滚轮: 减小窗口不透明度: "
      _Msg .= CurTransparency
    } else {
      _Msg .= "向下滚轮: 无法透明化桌面"
    }
    PushMsg(_Msg)
  }
}

TransparencyUp(show) {
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
  } else {
    if (SelectedWindow_IsDesktop() == 0) {
      WinGet, CurTransparency, Transparent, ahk_id %SelectedWindow_Id%
      _Msg .= "向上滚轮: 增加窗口不透明度: "
      _Msg .= CurTransparency
    } else {
      _Msg .= "向上滚轮: 无法透明化桌面"
    }
    PushMsg(_Msg)
  }
}
