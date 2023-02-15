ExplorerNavigateUp:
  if (SelectedWindow_IsExplorer()) {
    Send, {Alt Down}{Up}
    Send, {Alt Up}
  }
Return

ExplorerNavigateForward:
  if (SelectedWindow_IsExplorer()) {
    Send, {Alt Down}{Right}
    Send, {Alt Up}
  }
Return

ExplorerNavigateBackward:
  if (SelectedWindow_IsExplorer()) {
    Send, {Alt Down}{Left}
    Send, {Alt Up}
  }
Return

ExplorerNavigateUpMsg:
  if (SelectedWindow_IsExplorer()) {
    if (StrLen(msg) > 0) {
      msg .= "`n"
    }
    msg .= "松开右键: 向上一级"
  }
Return

ExplorerNavigateForwardBackwardMsg:
  if (SelectedWindow_IsExplorer()) {
    if (StrLen(msg) > 0) {
      msg .= "`n"
    }
    msg .= "滚动滚轮: 前进或后退"
  }
Return
