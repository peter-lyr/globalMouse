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
#if !IsRemoteDesktop
RButton::
  GoSub, GlobalRButton
Return

; 全局右键 - 结束
#if !IsRemoteDesktop
RButton Up::
  GoSub, GlobalRButtonEnd
  GoSub, _Mark_RightUp
Return

; 全局右键 - 标记左键
#if !IsRemoteDesktop
~LButton::
  GoSub, _Mark_LeftDown
Return
#if !IsRemoteDesktop
~LButton Up::
  GoSub, _Mark_LeftUp
Return

; 全局右键 - 标记中键
#if !IsRemoteDesktop
~MButton::
  GoSub, _Mark_MButtonDown
Return
#if !IsRemoteDesktop
~MButton Up::
  GoSub, _Mark_MButtonUp
Return
#if !IsRemoteDesktop
~RButton & MButton Up::
  GoSub, _Mark_MButtonUp
Return

; 全局右键 - 标记滚轮
#if !IsRemoteDesktop
$WheelUp::
  GoSub, _Mark_WheelUp
Return
#if !IsRemoteDesktop
$WheelDown::
  GoSub, _Mark_WheelDown
Return

; ++++++++++++++++++++++++++++++++++++++
; GlobalRButton
; ++++++++++++++++++++++++++++++++++++++

#if !IsRemoteDesktop
~RButton & LButton::
  GoSub, MoveWindow
  GoSub, _Mark_LeftDown
Return

#if !IsRemoteDesktop
~RButton & MButton::
  GoSub, _Mark_MButtonDown
  GoSub, ResizeWindow
Return
