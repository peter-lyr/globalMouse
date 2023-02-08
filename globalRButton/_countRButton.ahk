RButtonTimer:
  _RButtonTimerCnt += 1
  ; tooltip, %RButtonPressCnt%-%_RButtonTimerCnt%
  if (_RButtonTimerCnt > _RButtonTimerOut) {
    SetTimer, RButtonTimer, Off
    Return
  }
Return

CntGlobalRButton:
  if (_RButtonTimerCnt < _RButtonTimerOut) {
    RButtonPressCnt += 1
    if (RButtonPressCnt > 3) {
      RButtonPressCnt := 3
    }
  } else {
    RButtonPressCnt := 1
  }
  _RButtonTimerCnt := 0
  SetTimer, RButtonTimer, 10
Return

CntGlobalRButtonEnd:
  SetTimer, RButtonTimer, Off
  if (_RButtonTimerCnt < _RButtonTimerOut) {
    _RButtonTimerCnt := 0
    SetTimer, RButtonTimer, 10
  }
Return
