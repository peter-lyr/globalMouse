InitCircle:
  CoordMode, mouse, screen
  Gui, -Caption +ToolWindow +AlwaysOnTop +LastFound
  Gui, Color, %CircleColor%
  GuiHwnd := WinExist()
  DetectHiddenWindows, On
  WinSet, Transparent, 50, ahk_id %GuiHwnd%
  WinSet, Region, % "0-0 W" CircleSize " H" CircleSize " E", ahk_id %GuiHwnd%
  WinSet, ExStyle, +0x20, ahk_id %GuiHwnd%
  Gui, Show, w200 h200 hide
Return

DrawCircle1S:
  _posX := Round(_CurrentMouse_X - CircleSize/2), _posY := Round(_CurrentMouse_Y - CircleSize/2)
  Gui, Show, x%_posX% y%_posY% NA
Return

DrawCircle:
  MouseGetPos, _CurrentMouse_X, _CurrentMouse_Y
  _posX := Round(_CurrentMouse_X - CircleSize/2), _posY := Round(_CurrentMouse_Y - CircleSize/2)
  Gui, Show, x%_posX% y%_posY% NA
  SetTimer, DrawCircle1S, 1000
Return

HideCircle:
  Gui, Hide
Return
