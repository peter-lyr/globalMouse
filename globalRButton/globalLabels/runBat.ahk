BatListInit:
  BatList := []
  BatIndex := 0
  Loop, Files, *.bat, R
  {
    BatList.Push(A_LoopFileFullPath)
    BatIndex := BatIndex + 1
  }
  BatIndex := BatIndex * 1000
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

BatListRightUp:
  _BatPath := A_WorkingDir "\" BatList[1 + BatIndex - (BatIndex // BatList.Length()) * BatList.Length()]
  RunBat(_BatPath)
Return

BatListWheelUp:
  BatIndex -= 1
Return

BatListWheelDown:
  BatIndex += 1
Return

BatListMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= GetListMsg(BatList, 1 + BatIndex - (BatIndex // BatList.Length()) * BatList.Length())
Return
