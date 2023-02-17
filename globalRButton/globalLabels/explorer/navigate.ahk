ExplorerNavigateUp(show) {
  if (show == 0) {
    if (SelectedWindow_IsOnlyExplorer()) {
      Send, {Alt Down}{Up}
      Send, {Alt Up}
    }
  } else {
    if (SelectedWindow_IsOnlyExplorer()) {
      PushMsg("松开右键: 向上一级")
    }
  }
}

ExplorerNavigateForward(show) {
  if (show == 0) {
    if (SelectedWindow_IsOnlyExplorer()) {
      Send, {Alt Down}{Right}
      Send, {Alt Up}
    }
  } else {
    if (SelectedWindow_IsOnlyExplorer()) {
      PushMsg("向上滚轮: 前进")
    }
  }
}

ExplorerNavigateBackward(show) {
  if (show == 0) {
    if (SelectedWindow_IsOnlyExplorer()) {
      Send, {Alt Down}{Left}
      Send, {Alt Up}
    }
  } else {
    if (SelectedWindow_IsOnlyExplorer()) {
      PushMsg("向下滚轮: 后退")
    }
  }
}
