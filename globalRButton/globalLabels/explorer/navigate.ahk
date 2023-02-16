ExplorerNavigateUp(show) {
  if (show == 0) {
    if (SelectedWindow_IsExplorer()) {
      Send, {Alt Down}{Up}
      Send, {Alt Up}
    }
  } else {
    if (SelectedWindow_IsExplorer()) {
      PushMsg("松开右键: 向上一级")
    }
  }
}

ExplorerNavigateForward(show) {
  if (show == 0) {
    if (SelectedWindow_IsExplorer()) {
      Send, {Alt Down}{Right}
      Send, {Alt Up}
    }
  } else {
    if (SelectedWindow_IsExplorer()) {
      PushMsg("向上滚轮: 前进")
    }
  }
}

ExplorerNavigateBackward(show) {
  if (show == 0) {
    if (SelectedWindow_IsExplorer()) {
      Send, {Alt Down}{Left}
      Send, {Alt Up}
    }
  } else {
    if (SelectedWindow_IsExplorer()) {
      PushMsg("向下滚轮: 后退")
    }
  }
}
