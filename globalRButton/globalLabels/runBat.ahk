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

BatListRightUp:
  _Bat := A_WorkingDir "\" BatList[1 + BatIndex - (BatIndex // BatList.Length()) * BatList.Length()]
  Run %comSpec% /c ""%_Bat%""
Return

BatListWheelUp:
  BatIndex += 1
Return

BatListWheelDown:
  BatIndex -= 1
Return

BatListMsg:
  if (StrLen(msg) > 0) {
    msg .= "`n"
  }
  msg .= GetListMsg(BatList, 1 + BatIndex - (BatIndex // BatList.Length()) * BatList.Length())
Return
