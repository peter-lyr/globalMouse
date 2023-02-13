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
#if !IsRemoteDesktop
RButton::
  if (PauseFlag) {
    Send, {RButton}
    Return
  }
  GoSub, GlobalRButton
Return

; 全局右键 - 结束
#if !IsRemoteDesktop
RButton Up::
  if (PauseFlag) {
    Send, {RButton Up}
    Return
  }
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
#if !IsRemoteDesktop
WheelUp::
  if (PauseFlag) {
    Send, {WheelUp}
    Return
  }
  GoSub, _Mark_WheelUp
Return
#if !IsRemoteDesktop
WheelDown::
  if (PauseFlag) {
    Send, {WheelDown}
    Return
  }
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
    GoSub, RestoreScript
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
    GoSub, StopScript
  } else {
    GoSub, RestoreScript
  }
  SetTimer, _RemoveTooltip, -2200
Return
