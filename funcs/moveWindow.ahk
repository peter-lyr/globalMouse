MoveWindowWatch:
  CoordMode, Mouse, Screen
  GetKeyState, _LButtonStatus, LButton, P
  if (_LButtonStatus == "U") {
    SetTimer, MoveWindowWatch, Off
    Return
  }
  if (Flag_RightUp == 1) {
    SetTimer, MoveWindowWatch, Off
    WinMove, ahk_id %MoveWindow_Id%, , %MoveWindow_OriX%, %MoveWindow_OriY%
    Return
  }
  MouseGetPos, _X2, _Y2
  WinGetPos, _X, _Y, , , ahk_id %MoveWindow_Id%
  SetWinDelay, -1
  WinMove, ahk_id %MoveWindow_Id%, , _X + _X2 - _X1, _Y + _Y2 - _Y1
  _X1 := _X2
  _Y1 := _Y2
Return

MoveWindow:
  CoordMode, Mouse, Screen
  MouseGetPos, _X1, _Y1, MoveWindow_Id
  if (SelectedWindow_IsDesktop()) {
    Return
  }
  WinGetPos, MoveWindow_OriX, MoveWindow_OriY, , , ahk_id %MoveWindow_Id%
  WinGet, _MinMaxStatus, MinMax, ahk_id %MoveWindow_Id%
  if (_MinMaxStatus = 0) {
    SetTimer, MoveWindowWatch, 10
  }
Return
