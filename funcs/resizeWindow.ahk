ResizeWindow:
  ; CoordMode, Mouse
  SetWinDelay, 2
  MouseGetPos, _MouseWindow_X1, _MouseWindow_Y1, _MouseWindowId
  WinGet, _MaxMaxStatus, MinMax, ahk_id %_MouseWindowId%
  if _MaxMaxStatus {
    Return
  }
  WinGetPos, _X1, _Y1, _W, _H, ahk_id %_MouseWindowId%
  if (_MouseWindow_X1 < _X1 + _W / 2) {
    _WinLeft := 1
  } else {
    _WinLeft := -1
  }
  if (_MouseWindow_Y1 < _Y1 + _H / 2) {
    _WinUp := 1
  } else {
    _WinUp := -1
  }
  Loop {
    GetKeyState, MButtonStatus, MBUTTON, P
    if (MButtonStatus == "U") {
      break
    }
    MouseGetPos, _MouseWin_X2, _MouseWin_Y2
    WinGetPos, _X1, _Y1, _W, _H, ahk_id %_MouseWindowId%
    _MouseWin_X2 -= _MouseWindow_X1
    _MouseWin_Y2 -= _MouseWindow_Y1
    WinMove, ahk_id %_MouseWindowId%, , _X1 + (_WinLeft + 1) / 2  * _MouseWin_X2
                                      , _Y1 + (_WinUp + 1)    / 2 * _MouseWin_Y2
                                      , _W  - _WinLeft            * _MouseWin_X2
                                      , _H  - _WinUp              * _MouseWin_Y2
    _MouseWindow_X1 := (_MouseWin_X2 + _MouseWindow_X1)
    _MouseWindow_Y1 := (_MouseWin_Y2 + _MouseWindow_Y1)
  }
Return
