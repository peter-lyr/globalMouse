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

CtrlCCopy:
  Send {Ctrl Down}c
  Send {Ctrl Up}
  SetTimer, ClipboardWatcher, 10
Return

CtrlCCopyMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (PathCopied == 0) {
    msg .= "单击左键: <Ctrl-C>复制"
  } else {
    msg .= PathCopied
  }
Return
