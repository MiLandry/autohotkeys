google:
  {
  InputBox, UserInput, Google Query, You can haz question for Google? , , 320, 280
  if ErrorLevel
      return
  else
      Run, http://www.google.com/search?q=%UserInput%
  }

  ExitApp
  return


toby:
  WinWait Google Chrome
  WinActivate Google Chrome
  Sleep, 200
  Send, ^t
  Sleep, 200
  Send, {Tab} 
  Sleep, 1000
  SendInput, /

  ExitApp
  return