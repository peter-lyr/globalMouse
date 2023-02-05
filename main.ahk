#Include %A_ScriptDir%\globalRButton\globalRButton.ahk
#Include %A_ScriptDir%\globalRButton\_markFlag.ahk

; ++++++++++++++++++++++++++++++++++++++
; GlobalRButton
; ++++++++++++++++++++++++++++++++++++++

; 全局右键
~RButton::
  GoSub, GlobalRButton
Return

; 全局右键 - 结束
~RButton Up::
  GoSub, GlobalRButtonEnd
Return

; 全局右键 - 标记左键
~RButton & LButton::
  GoSub, _Mark_LeftDown
Return
~RButton & LButton Up::
  GoSub, _Mark_LeftUp
Return

; 全局右键 - 标记中键
~RButton & MButton::
  GoSub, _Mark_MButtonDown
Return
~RButton & MButton Up::
  GoSub, _Mark_MButtonUp
Return

; 全局右键 - 标记滚轮
~RButton & WheelUp::
  GoSub, _Mark_WheelUp
Return
~RButton & WheelDown::
  GoSub, _Mark_WheelDown
Return

; ++++++++++++++++++++++++++++++++++++++
; GlobalRButton
; ++++++++++++++++++++++++++++++++++++++
