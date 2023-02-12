SelectedWindow_IsDesktop() {
  global SelectedWindow_Title
  if (StrLen(SelectedWindow_Title) > 0 and SelectedWindow_Title != "Program Manager") {
    Return 0
  } else {
    Return 1
  }
}

GetListMsg(List, Index) {
  ; Index从1开始
  _Msg := ""
  for k, v in List
  {
    if (k == Index) {
      _Msg .= "----> "
    } else {
      _Msg .= "          "
    }
    _Msg .= v "`n"
  }
  Return _Msg
}

SelectedWindow(SelectedWindow_Id) {
  global SelectedWindow_Title
  global SelectedWindow_ProcessName
  WinGetTitle, SelectedWindow_Title, ahk_id %SelectedWindow_Id%
  WinGet, SelectedWindow_ProcessName, ProcessName, ahk_id %SelectedWindow_Id%
  SelectedWindow_Title := Trim(SelectedWindow_Title)
  SelectedWindow_ProcessName := Trim(SelectedWindow_ProcessName)
}

SelectedWindow_IsExplorer() {
  global SelectedWindow_ProcessName
  if (RegexMatch(SelectedWindow_ProcessName, "i)explorer\.exe") || RegexMatch(CurWinTitle, "i)Program Manager")) {
    Return 1
  }
  Return 0
}

StopScript:
  PauseFlag := 1
  tooltip, 已暂停全局右键 <Ctrl-Win-Alt-F12>/<RButton-MButton>恢复
  GoSub, HideCircle
  DllCall("SwapMouseButton", "uInt", false)
Return

RestoreScript:
  PauseFlag := 0
  tooltip, 已恢复全局右键 <Ctrl-Win-Alt-F12>暂停
  DllCall("SwapMouseButton", "uInt", true)
Return

RunWaitOne(command) {
    shell := ComObjCreate("WScript.Shell")
    ; 通过 cmd.exe 执行单条命令
    exec := shell.Exec(ComSpec " /C " command)
    ; 读取并返回命令的输出
    Return exec.StdOut.ReadAll()
}

GetSwapMouseButtons() {
  cmd := "reg query ""HKEY_CURRENT_USER\Control Panel\Mouse"" /v SwapMouseButtons | findstr /ri ""SwapMouseButtons"""
  ret := RunWaitOne(cmd)
  ret := Trim(ret, " `n`r`t")
  ret := SubStr(ret, 0, 1)
  if (ret == "1") {
    Return 1
  }
  Return 0
}
