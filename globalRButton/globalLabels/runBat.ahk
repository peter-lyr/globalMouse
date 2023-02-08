BatListRightUp:
Return

BatListWheelUp:
Return

BatListWheelDown:
Return

BatListMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  if (BatList == "") {
    BatList := []
    _Msg := ""
    Loop, Files, *.bat, R
    {
      BatList.Push(A_WorkingDir "\" A_LoopFileName)
    }
    for k, v in BatList
    {
      _Msg .= v "`n"
    }
  }
  msg .= _Msg
Return
