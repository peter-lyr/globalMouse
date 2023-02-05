; 标记左键按下
_RemoveFlag_LeftDown:
  Flag_LeftDown := 0
Return
_Mark_LeftDown:
  Flag_LeftDown := 1
  Flag_LeftUp := 0
  SetTimer, _RemoveFlag_LeftDown, -211
Return

; 标记左键抬起
_RemoveFlag_LeftUp:
  Flag_LeftUp := 0
Return
_Mark_LeftUp:
  Flag_LeftUp := 1
  Flag_LeftDown := 0
  SetTimer, _RemoveFlag_LeftUp, -211
Return


; 标记中键按下
_RemoveFlag_MButtonDown:
  Flag_MButtonDown := 0
Return
_Mark_MButtonDown:
  Flag_MButtonDown := 1
  Flag_MButtonUp := 0
  SetTimer, _RemoveFlag_MButtonDown, -211
Return

; 标记中键抬起
_RemoveFlag_MButtonUp:
  Flag_MButtonUp := 0
Return
_Mark_MButtonUp:
  Flag_MButtonUp := 1
  Flag_MButtonDown := 0
  SetTimer, _RemoveFlag_MButtonUp, -211
Return


; 标记滚轮向下
_RemoveFlag_WheelDown:
  Flag_WheelDown := 0
Return
_Mark_WheelDown:
  Flag_WheelDown := 1
  Flag_WheelUp := 0
  SetTimer, _RemoveFlag_WheelDown, -211
Return

; 标记滚轮向上
_RemoveFlag_WheelUp:
  Flag_WheelUp := 0
Return
_Mark_WheelUp:
  Flag_WheelUp := 1
  Flag_WheelDown := 0
  SetTimer, _RemoveFlag_WheelUp, -211
Return
