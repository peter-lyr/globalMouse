ClipboardWatcher:
  _Clipboard=%clipboard%
  if (_Clipboard != "") {
    SetTimer, ClipboardWatcher, Off
    if (_Clipboard != _OldClipboard) {
      clipboard=%clipboard%
      PathCopied := "已复制"
      if (SelectedWindow_IsExplorer() == 1) {
        PathCopied .= ": "
        PathCopied .= _Clipboard
      }
      _OldClipboard=%clipboard%
    } else {
      PathCopied := "不变"
      if (SelectedWindow_IsExplorer() == 1) {
        PathCopied .= ": "
        PathCopied .= _Clipboard
      }
    }
    GetKeyState, RButtonSta, RButton, P
    if (RButtonSta == "U") {
      tooltip, %PathCopied%
    }
  }
Return

CtrlCCopy(show) {
  global PathCopied
  if (show == 0) {
    Send {Ctrl Down}c
    Send {Ctrl Up}
    SetTimer, ClipboardWatcher, 10
  } else {
    if (PathCopied == 0) {
      PushMsg("单击左键: <Ctrl-C>复制")
    } else {
      PushMsg(PathCopied)
    }
  }
}
