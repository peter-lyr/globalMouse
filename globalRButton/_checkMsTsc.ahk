CheckMstscDo:
  MouseGetPos, , , _Temp_Id
  WinGet, _Temp_ProcessName, ProcessName, ahk_id %_Temp_Id%
  _Temp_ProcessName := Trim(_Temp_ProcessName)
  if (RegexMatch(_Temp_ProcessName, "i)mstsc\.exe") || RegexMatch(_Temp_ProcessName, "i)sunloginclient\.exe")) {
    IsRemoteDesktop := 1
  } else {
    IsRemoteDesktop := 0
  }
Return

StartCheckMstsc:
  if (!mstscStartCheckFlag) {
    GoSub, HideCircle
    mstscStartCheckFlag := 1
    SetTimer, CheckMstscDo, 10
  }
Return
