SwapMouseButtonDo(show) {
  global Flag_SwapMouseButton
  if (show == 0) {
    Flag_SwapMouseButton := !Flag_SwapMouseButton
    DllCall("SwapMouseButton", Int, Flag_SwapMouseButton)
    if (Flag_SwapMouseButton) {
      IniWrite 1, globalMouse.ini, MainMouseButton, mode
      tooltip, 已切换鼠标左右键
    } else {
      IniWrite 0, globalMouse.ini, MainMouseButton, mode
      tooltip, 已切换回正常鼠标左右键
    }
    KeyWait, MButton
  } else {
    if (Flag_SwapMouseButton) {
      _Msg := "单击中键: 切换回正常鼠标左右键"
    } else {
      _Msg := "单击中键: 切换鼠标左右键"
    }
    PushMsg(_Msg)
  }
}
