MsgCenter2_RightUp(show) {
}

MsgCenter2_LeftDown(show) {
  CtrlCCopy(show)
}

MsgCenter2_LeftUp(show) {
}

MsgCenter2_MButtonDown(show) {
  WinV(show)
}

MsgCenter2_MButtonUp(show) {
}

MsgCenter2_WheelDown(show) {
  SendLeftWheelUp(show)
}

MsgCenter2_WheelUp(show) {
  SendRightWheelDown(show)
}
