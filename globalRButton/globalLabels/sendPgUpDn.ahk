SendPgDnWheelDown(show) {
  if (show == 0) {
    Send, {PgDn}
  } else {
    PushMsg("向下滚轮: PgDn")
  }
}

SendPgUpWheelUp(show) {
  if (show == 0) {
    Send, {PgUp}
  } else {
    PushMsg("向上滚轮: PgUp")
  }
}
