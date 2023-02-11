ResizeWindow:
  ; CoordMode, Mouse
  SetWinDelay, 2
  MouseGetPos, _MouseWindow_X1, _MouseWindow_Y1, _MouseWindowId
  WinGet, _MaxMaxStatus, MinMax, ahk_id %_MouseWindowId%
  if _MaxMaxStatus {
    Return
  }
  WinGetPos, _X1, _Y1, _W, _H, ahk_id %_MouseWindowId%
  _Y := _H * (_MouseWindow_X1 - _X1) / _W + _Y1
  __Y := _H * (_X1 - _MouseWindow_X1) / _W + _Y1 + _H
  if (_MouseWindow_X1 < _X1 + _W / 3 or ((_MouseWindow_Y1 > _Y) and (_MouseWindow_Y1 < __Y))) {
    _WinLeft := 1
    _WinWidth := 1
    __Dx := 1
  } else if (_MouseWindow_X1 > _X1 + _W * 2 / 3 or ((_MouseWindow_Y1 < _Y) and (_MouseWindow_Y1 > __Y))) {
    _WinLeft := -1
    _WinWidth := 1
    __Dx := 0
  } else {
    _WinLeft := 0
    _WinWidth := 0
    __Dx := 0
  }
  if (_MouseWindow_Y1 < _Y1 + _H / 3 or ((_MouseWindow_Y1 < _Y) and (_MouseWindow_Y1 < __Y))) {
    _WinUp := 1
    _WinHeight := 1
    __Dy := 1
  } else if (_MouseWindow_Y1 > _Y1 + _H * 2 / 3 or ((_MouseWindow_Y1 > _Y) and (_MouseWindow_Y1 > __Y))) {
    _WinUp := -1
    _WinHeight := 1
    __Dy := 0
  } else {
    _WinUp := 0
    _WinHeight := 0
    __Dy := 0
  }
  Loop {
    GetKeyState, MButtonStatus, MBUTTON, P
    if (MButtonStatus == "U") {
      Break
    }
    MouseGetPos, _MouseWin_X2, _MouseWin_Y2
    WinGetPos, _X1, _Y1, _W, _H, ahk_id %_MouseWindowId%
    _MouseWin_X2 -= _MouseWindow_X1
    _MouseWin_Y2 -= _MouseWindow_Y1
    _X_ := _X1 + _MouseWin_X2 * __Dx
    _Y_ := _Y1 + _MouseWin_Y2 * __Dy
    _W_ := _W  - _MouseWin_X2 * _WinLeft * _WinWidth
    _H_ := _H  - _MouseWin_Y2 * _WinUp  * _WinHeight
    WinMove, ahk_id %_MouseWindowId%, , _X_ , _Y_ , _W_ , _H_
    _MouseWindow_X1 := (_MouseWin_X2 + _MouseWindow_X1)
    _MouseWindow_Y1 := (_MouseWin_Y2 + _MouseWindow_Y1)
  }
Return
