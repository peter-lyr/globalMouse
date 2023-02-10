MouseCursor_Direction:
  MouseGetPos, _x, _y
  _dx := _x - mouseCursor_X
  _dy := _y - mouseCursor_Y
  _c  := sqrt(_dx ** 2 + _dy ** 2)
  _gap := CircleSize / 2
  _min := _gap * 0.3826834324 ;sin(22.5°) == 0.3826834324
  _max := _gap * 0.9238795325 ;sin(67.5°) == 0.9238795325
  if (_c <= _gap) {
    Direction := "Center"
  } else {
    _dx := _dx * _gap / _c
    _dy := _dy * _gap / _c
    if (abs(_dx) >= _min and abs(_dx) <= _max and abs(_dy) >= _min and abs(_dy) <= _max) {
      if (_dx >= 0 and _dy <= 0) {
        Direction := "RightUp"
      } else if (_dx >= 0 and _dy >= 0) {
        Direction := "RightDown"
      } else if (_dx <= 0 and _dy >= 0) {
        Direction := "LeftDown"
      } else {
        Direction := "LeftUp"
      }
    } else {
      if (abs(_dx) <= _min and _dy <= 0) {
        Direction := "Up"
      } else if (abs(_dy) <= _min and _dx >= 0) {
        Direction := "Right"
      } else if (abs(_dx) <= _min and _dy >= 0) {
        Direction := "Down"
      } else {
        Direction := "Left"
      }
    }
  }
Return
