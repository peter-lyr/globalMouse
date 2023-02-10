ClipboardWatcher:
  _Clipboard=%clipboard%
  if (_Clipboard != "") {
    SetTimer, ClipboardWatcher, Off
    if (_Clipboard != _OldClipboard) {
      clipboard=%clipboard%
      PathCopied := "已复制: "
      PathCopied .= _Clipboard
      _OldClipboard=%clipboard%
    } else {
      PathCopied := "不变: "
      PathCopied .= _Clipboard
    }
    GetKeyState, RButtonSta, RButton, P
    if (RButtonSta == "U") {
      tooltip, %PathCopied%
    }
  }
Return

ExplorerCopyPath:
  if (SelectedWindow_IsExplorer() == 1) {
    Send {Ctrl Down}c
    Send {Ctrl Up}
    SetTimer, ClipboardWatcher, 10
  }
Return

ExplorerCopyPathMsg:
  if (SelectedWindow_IsExplorer() == 1) {
    if (StrLen(msg) > 0) {
      msg .= "`n"
    }
    if (PathCopied == 0) {
      msg .= "单击: 复制文件路径"
    } else {
      msg .= PathCopied
    }
  }
Return
