BatListInit:
  BatList := []
  BatIndex := 1
  Loop, Files, *.bat, R
  {
    BatList.Push(A_LoopFileFullPath)
  }
Return

RunBat(FilePath) {
  _Cnt := 0
  _OnlyOneLine := 1
  Loop, Read, %FilePath%
  {
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
      _Cnt += 1
      if (_Cnt > 1) {
        _OnlyOneLine := 0
        Break
      }
      _Line := A_LoopField
    }
  }
  if (_OnlyOneLine == 1) {
    Run %_Line%
  } else {
    Run %comSpec% /c ""%FilePath%""
  }
}

BatListRightUp(show) {
  global BatList
  global BatIndex
  if (show == 0) {
    _BatPath := A_WorkingDir "\" BatList[BatIndex]
    RunBat(_BatPath)
    tooltip
  } else {
    if (BatIndex > 0 and BatIndex < BatList.Length() + 1) {
      _Msg := "松开右键: 运行命令"
      _Msg .= " (1/"
      _Msg .= BatList.Length()
      _Msg .= ")"
      PushMsg(_Msg)
    } else {
      PushMsg("松开右键:")
    }
  }
}

BatListWheelDown(show) {
  global BatList
  global BatIndex
  if (show == 0) {
    if (BatIndex < BatList.Length()) {
      BatIndex += 1
    } else {
      BatIndex := BatList.Length() + 1
    }
  }
}

BatListWheelUp(show) {
  global BatList
  global BatIndex
  if (show == 0) {
    if (BatIndex >= 1) {
      BatIndex -= 1
    } else {
      BatIndex = 0
    }
  } else {
    _Msg := ""
    if (BatIndex == 0) {
      _Msg .= "----> `n"
    } else {
      _Msg .= "          `n"
    }
    _Msg .= GetListMsg(BatList, BatIndex)
    if (BatIndex == BatList.Length() + 1) {
      _Msg .= "----> "
    } else {
      _Msg .= "          "
    }
    PushMsg(_Msg)
  }
}
