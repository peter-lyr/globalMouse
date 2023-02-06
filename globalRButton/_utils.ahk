mouseCursor_IsDesktop() {
  global mouseCursor_Title
  if (StrLen(mouseCursor_Title) > 0 and mouseCursor_Title != "Program Manager") {
    Return 0
  } else {
    Return 1
  }
}

mouseCursor_IsToSendEsc() {
  global mouseCursor_Title
  if (StrLen(mouseCursor_Title) > 0) {
    if (mouseCursor_Title != "Program Manager") {
      Return 1
    }
    if (RegexMatch(mouseCursor_ProcessName, "i)msedge\.exe")) {
      Return 1
    }
    if (RegexMatch(mouseCursor_ProcessName, "i)explorer\.exe")) {
      Return 1
    }
    if (RegexMatch(mouseCursor_ProcessName, "i)taskmgr\.exe")) {
      Return 1
    }
  }
}
