#SingleInstance force
#Usehook On

SomeThingDone := 0

#Include %A_ScriptDir%\globalRButton\globalRButton.ahk
#Include %A_ScriptDir%\globalRButton\_markFlag.ahk
#Include %A_ScriptDir%\funcs\moveWindow.ahk
#Include %A_ScriptDir%\funcs\resizeWindow.ahk

; ++++++++++++++++++++++++++++++++++++++
; GlobalRButton
; ++++++++++++++++++++++++++++++++++++++

; 全局右键
RButton::
  GoSub, GlobalRButton
Return

; 全局右键 - 结束
RButton Up::
  GoSub, GlobalRButtonEnd
  GoSub, _Mark_RightUp
Return

; 全局右键 - 标记左键
~LButton::
  GoSub, _Mark_LeftDown
Return
~LButton Up::
  GoSub, _Mark_LeftUp
Return

; 全局右键 - 标记中键
~MButton::
  GoSub, _Mark_MButtonDown
Return
~MButton Up::
  GoSub, _Mark_MButtonUp
Return
~RButton & MButton Up::
  GoSub, _Mark_MButtonUp
Return

; 全局右键 - 标记滚轮
$WheelUp::
  GoSub, _Mark_WheelUp
Return
$WheelDown::
  GoSub, _Mark_WheelDown
Return

; ++++++++++++++++++++++++++++++++++++++
; GlobalRButton
; ++++++++++++++++++++++++++++++++++++++

~RButton & LButton::
  GoSub, MoveWindow
Return

~RButton & MButton::
  GoSub, _Mark_MButtonDown
  GoSub, ResizeWindow
Return
