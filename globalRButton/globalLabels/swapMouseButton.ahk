SwapMouseButtonDo:
  Flag_SwapMouseButton := DllCall("SwapMouseButton")
  Flag_SwapMouseButton := !Flag_SwapMouseButton
  DllCall("SwapMouseButton", Int, Flag_SwapMouseButton)
  if (Flag_SwapMouseButton) {
    tooltip, 已切换鼠标左右键
  } else {
    tooltip, 已切换回正常鼠标左右键
  }
  KeyWait, MButton
Return

SwapMouseButtonDoMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (Flag_SwapMouseButton) {
    msg .= "点击中键: 切换回正常鼠标左右键"
  } else {
    msg .= "点击中键: 切换鼠标左右键"
  }
Return
