PauseGlobalMouse(show) {
  global PauseFlag
  if (show == 0) {
    SetTimer, DrawCircle1S, Off
    GoSub, HideCircle
    PauseFlag := 1
    tooltip, 已暂停全局右键`n开全局右键: <Ctrl-Win-Alt-F12>或者<RButton-MButton>
    SetTimer, _RemoveTooltip, -2200
  } else {
    if (PauseFlag == 0) {
      PushMsg("单击中键: 暂停全局右键")
    } else {
      PushMsg("已暂停全局右键`n开全局右键: <Ctrl-Win-Alt-F12>或者<RButton-MButton>")
      SetTimer, RButtonWatcher, Off
    }
  }
}

RestoreGlobalMouse:
  PauseFlag := 0
  if (GetIni_MainMouseButton() == 1) {
    Flag_SwapMouseButton := DllCall("SwapMouseButton")
  }
  tooltip, 已恢复全局右键`n关全局右键: <Ctrl-Win-Alt-F12>或者三次单击右键后在圆圈中心单击中键
Return

RunWaitOne(command) {
    shell := ComObjCreate("WScript.Shell")
    ; 通过 cmd.exe 执行单条命令
    exec := shell.Exec(ComSpec " /C " command)
    ; 读取并返回命令的输出
    Return exec.StdOut.ReadAll()
}

RunWaitMany(commands) {
    shell := ComObjCreate("WScript.Shell")
    ; 打开 cmd.exe 禁用命令显示
    exec := shell.Exec(ComSpec " /Q /K echo off")
    ; 发送并执行命令, 使用新行分隔
    exec.StdIn.WriteLine(commands "`nexit")  ; 保证执行完毕后退出!
    ; 读取并返回所有命令的输出
    return exec.StdOut.ReadAll()
}

ReRunGlobalMouse(show) {
  if (show == 0) {
    tooltip
    RunWaitMany("
    (
    taskkill /f /im topmost.exe
    taskkill /f /im autohotkey.exe
    taskkill /f /im globalMouse.exe
    start /MIN /B globalMouse.exe
    )")
  } else {
    PushMsg("松开右键: ReRunGlobalMouse")
  }
}

ExitGlobalMouse(show) {
  if (show == 0) {
    tooltip
    MsgBox, 4,, Would you like to ExitGlobalMouse?
    IfMsgBox Yes
      RunWaitMany("
      (
      taskkill /f /im topmost.exe
      taskkill /f /im autohotkey.exe
      taskkill /f /im globalMouse.exe
      )")
  } else {
    PushMsg("单击中键: ExitGlobalMouse")
  }
}
