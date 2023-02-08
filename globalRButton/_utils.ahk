mouseCursor_IsDesktop() {
  global mouseCursor_Title
  if (StrLen(mouseCursor_Title) > 0 and mouseCursor_Title != "Program Manager") {
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
      _Msg .= "      "
    }
    _Msg .= v "`n"
  }
  Return _Msg
}
