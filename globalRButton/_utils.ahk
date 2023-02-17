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
  global CurWinTitle
  global SelectedWindow_ProcessName
  if (RegexMatch(SelectedWindow_ProcessName, "i)explorer\.exe") || RegexMatch(CurWinTitle, "i)Program Manager")) {
    Return 1
  }
  Return 0
}

SelectedWindow_IsOnlyExplorer() {
  global CurWinTitle
  global SelectedWindow_ProcessName
  if (StrLen(CurWinTitle) > 0 and RegexMatch(SelectedWindow_ProcessName, "i)explorer\.exe")) {
    Return 1
  }
  Return 0
}

RunWaitOne(command) {
    shell := ComObjCreate("WScript.Shell")
    ; 通过 cmd.exe 执行单条命令
    exec := shell.Exec(ComSpec " /C " command)
    ; 读取并返回命令的输出
    Return exec.StdOut.ReadAll()
}

GetIni_MainMouseButton() {
  IniRead, value, globalMouse.ini, MainMouseButton, mode, 0
  Return value
}

PushMsg(text) {
  global msg
  if (StrLen(text) > 0) {
    if (StrLen(msg) > 0) {
      msg .= "`n"
    }
    msg .= text
  }
}
