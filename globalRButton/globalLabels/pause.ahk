PauseGlobalMouse(show) {
  global PauseFlag
  if (show == 0) {
    SetTimer, DrawCircle1S, Off
    GoSub, HideCircle
    PauseFlag := 1
    tooltip, 已暂停全局右键`n开全局右键: <Ctrl-Win-Alt-F12>或者<RButton-MButton>
    SetTimer, _RemoveTooltip, -2200
  } else {
    if (PauseFlag == 0) {
      PushMsg("单击中键: 暂停全局右键")
    } else {
      PushMsg("已暂停全局右键`n开全局右键: <Ctrl-Win-Alt-F12>或者<RButton-MButton>")
      SetTimer, RButtonWatcher, Off
    }
  }
}

RestoreGlobalMouse:
  PauseFlag := 0
  if (GetIni_MainMouseButton() == 1) {
    Flag_SwapMouseButton := DllCall("SwapMouseButton")
  }
  tooltip, 已恢复全局右键`n关全局右键: <Ctrl-Win-Alt-F12>或者三次单击右键后在圆圈中心单击中键
Return
