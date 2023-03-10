; 标记右键抬起
_RemoveFlag_RightUp:
  Flag_RightUp := 0
Return
_Mark_RightUp:
  Flag_RightUp := 1
  SetTimer, _RemoveFlag_RightUp, -20
Return


; 标记左键按下
_RemoveFlag_LeftDown:
  Flag_LeftDown := 0
Return
_Mark_LeftDown:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    tooltip
    SetTimer, DrawCircle1S, Off
    GoSub, HideCircle
  }
  Flag_LeftDown := 1
  Flag_LeftUp := 0
  SetTimer, _RemoveFlag_LeftDown, -20
  Flag_RightUpCancel := 1
Return

; 标记左键抬起
_RemoveFlag_LeftUp:
  Flag_LeftUp := 0
Return
_Mark_LeftUp:
  Flag_LeftUp := 1
  Flag_LeftDown := 0
  SetTimer, _RemoveFlag_LeftUp, -20
  Flag_RightUpCancel := 1
Return


; 标记中键按下
_RemoveFlag_MButtonDown:
  Flag_MButtonDown := 0
Return
_Mark_MButtonDown:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    tooltip
    SetTimer, DrawCircle1S, Off
    GoSub, HideCircle
  }
  Flag_MButtonDown := 1
  Flag_MButtonUp := 0
  SetTimer, _RemoveFlag_MButtonDown, -20
  Flag_RightUpCancel := 1
Return

; 标记中键抬起
_RemoveFlag_MButtonUp:
  Flag_MButtonUp := 0
Return
_Mark_MButtonUp:
  Flag_MButtonUp := 1
  Flag_MButtonDown := 0
  SetTimer, _RemoveFlag_MButtonUp, -20
  Flag_RightUpCancel := 1
Return


; 标记滚轮向下
_RemoveFlag_WheelDown:
  Flag_WheelDown := 0
Return
_Mark_WheelDown:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    tooltip
    SetTimer, DrawCircle1S, Off
    GoSub, HideCircle
  }
  PgDn40Cnt := 0
  Flag_WheelDown := 1
  Flag_WheelUp := 0
  SetTimer, _RemoveFlag_WheelDown, -20
  Flag_RightUpCancel := 1
  Flag_WheelUsed := 1
  if (Flag_RButtonDown == 0) {
    Click, WheelDown
  }
Return

; 标记滚轮向上
_RemoveFlag_WheelUp:
  Flag_WheelUp := 0
Return
_Mark_WheelUp:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    tooltip
    SetTimer, DrawCircle1S, Off
    GoSub, HideCircle
  }
  PgDn40Cnt := 0
  Flag_WheelUp := 1
  Flag_WheelDown := 0
  SetTimer, _RemoveFlag_WheelUp, -20
  Flag_RightUpCancel := 1
  Flag_WheelUsed := 1
  if (Flag_RButtonDown == 0) {
    Click, WheelUp
  }
Return
