SomeThingDone := 0
PauseFlag := 0

tooltip, 开/关全局右键: <Ctrl-Win-Alt-F12>`n关全局右键: 三次单击右键后在圆圈中心单击中键
SetTimer, _RemoveTooltip, -2200

#Include %A_ScriptDir%\globalRButton\globalRButton.ahk
#Include %A_ScriptDir%\globalRButton\_markFlag.ahk
#Include %A_ScriptDir%\funcs\moveWindow.ahk
#Include %A_ScriptDir%\funcs\resizeWindow.ahk
#Include %A_ScriptDir%\keyboard\keyboard.ahk

; ++++++++++++++++++++++++++++++++++++++
; GlobalRButton
; ++++++++++++++++++++++++++++++++++++++

; 全局右键
#if !IsRemoteDesktop and !PauseFlag
RButton::
  Send, {LWin Up}
  Send, {Ctrl Up}
  Send, {Alt Up}
  Send, {Sifht Up}
  GoSub, GlobalRButton
Return

; 全局右键 - 结束
#if !IsRemoteDesktop and !PauseFlag
RButton Up::
  GoSub, GlobalRButtonEnd
  GoSub, _Mark_RightUp
Return

; 全局右键 - 标记左键
#if !IsRemoteDesktop
~LButton::
  if (PauseFlag) {
    Return
  }
  GoSub, _Mark_LeftDown
Return
#if !IsRemoteDesktop
~LButton Up::
  if (PauseFlag) {
    Return
  }
  GoSub, _Mark_LeftUp
Return

; 全局右键 - 标记中键
#if !IsRemoteDesktop
~MButton::
  if (PauseFlag) {
    Return
  }
  GoSub, _Mark_MButtonDown
Return
#if !IsRemoteDesktop
~MButton Up::
  if (PauseFlag) {
    Return
  }
  GoSub, _Mark_MButtonUp
Return
#if !IsRemoteDesktop
~RButton & MButton Up::
  if (PauseFlag) {
    Return
  }
  GoSub, _Mark_MButtonUp
Return

; 全局右键 - 标记滚轮
#if !IsRemoteDesktop and !PauseFlag
WheelUp::
  GoSub, _Mark_WheelUp
Return
#if !IsRemoteDesktop and !PauseFlag
WheelDown::
  GoSub, _Mark_WheelDown
Return

; ++++++++++++++++++++++++++++++++++++++
; GlobalRButton
; ++++++++++++++++++++++++++++++++++++++

#if !IsRemoteDesktop
~RButton & LButton::
  if (PauseFlag) {
    Return
  }
  GoSub, _Mark_LeftDown
  if (RButtonPressCnt == 1) {
    GoSub, MoveWindow
  }
Return

#if !IsRemoteDesktop
~RButton & MButton::
  if (PauseFlag) {
    GoSub, RestoreGlobalMouse
    Return
  }
  GoSub, _Mark_MButtonDown
  if (RButtonPressCnt == 1) {
    GoSub, ResizeWindow
  }
Return

#if !IsRemoteDesktop
~^#!f12::
  PauseFlag := !PauseFlag
  if (PauseFlag == 1) {
    PauseGlobalMouse(0)
  } else {
    GoSub, RestoreGlobalMouse
  }
  SetTimer, _RemoveTooltip, -2200
Return

~F11::
  ret := GetIni_MainMouseButton()
  tooltip, %ret%
Return
