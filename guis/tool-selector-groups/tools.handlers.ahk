
Zoom:
  bringUpApp("Zoom", "C:\Program Files (x86)\Zoom\bin\Zoom.exe")
  ExitApp
  return

Trello:
  ActivateChromeTabByTitle("Trello")
  ExitApp
  return

Trello-d:
  bringUpApp("Trello", "C:\Users\Mike\Desktop\Trello")
  ExitApp
  return


Jira:
  ; ActivateChromeTabByTitle("Jira")
  run guis\GUI_Jira.ahk
  ExitApp
  return

Mail:
  openWorkEmail()
  Send ^1
  ExitApp
  return

Calendar:
  openCalendar()
  Send ^2
  ExitApp
  return

Skype:
  WinActivate, Skype
  ExitApp
  return

OneNote:
openOneNote()
  ExitApp
  return

PowerShell:
  ;bringUpApp("powershell", "C:\Users\miclandry\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell")
  openPowerShell()
  ExitApp
  return



