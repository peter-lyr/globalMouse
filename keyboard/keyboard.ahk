#o::
  WinActivate, ahk_exe nvim-qt.exe
Return

^#j::
  WinMinimize, A
Return

^#k::
  WinGet, _Status, MinMax, A
  if (_Status == 0) {
    WinMaximize, A
  } else {
    WinRestore, A
  }
Return

^#p::
  WinGet, SelectedWindow_Id, Id, A
  SelectedWindow(SelectedWindow_Id)
  GoSub, TransparencyToggle
Return
