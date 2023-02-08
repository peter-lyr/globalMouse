mouseCursor_IsDesktop() {
  global mouseCursor_Title
  if (StrLen(mouseCursor_Title) > 0 and mouseCursor_Title != "Program Manager") {
    Return 0
  } else {
    Return 1
  }
}
