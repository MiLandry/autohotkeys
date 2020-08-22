#SingleInstance, force
#NoEnv
SetBatchLines -1
#include FunctionLib.ahk
#Include Guis\ButtonPlugin\Class_ImageButton.ahk
SetTitleMatchMode 2



; Gui Layout
;---------------
;---------------

Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Font, cWhite



Gui, Add, Pic, w30 h30 gZoom, icons\Zoom.ico
Gui, Add, Pic, w30 h30 gTrello, Guis\trello.ico
Gui, Add, Pic, w30 h30 gJira, Guis\Jira.ico
Gui, Add, Pic, w30 h30 gMail, Guis\outlook.ico
Gui, Add, Pic, w30 h30 gCalendar, Guis\calendar.ico


Gui, Add, Text, y+30, Tools

Gui, Add, Pic, w30 h30 gVSCode, Guis\vscode.ico
Gui, Add, Pic, w30 h30 gRAD, icons\Rad.ico
Gui, Add, Pic, w30 h30 gDBeaver, icons\Database.ico
Gui, Add, Pic, w30 h30 gSkype, icons\skype.ico
Gui, Add, Pic, w30 h30 gOneNote, icons\onenote.ico
Gui, Add, Pic, w30 h30 gPowerShell, Guis\powershell.ico
Gui, Add, Pic, w30 h30 gSnippets, Guis\snippets.ico







; Column for buttons


Gui, Add, Button, ym w200 h30 gZoom, &Zoom ;ym adds column
Gui, Add, Button, w200 h30 gTrello, &Trello
Gui, Add, Button,w200 h30 gJira, &Jira
Gui, Add, Button,w200 h30 gMail, &Mail
Gui, Add, Button,w200 h30 gCalendar, Calendar

;tools
Gui, Add, Button, y+50 w200 h30 gVSCode, VS&Code
Gui, Add, Button, w200 h30 gRAD, RAD
Gui, Add, Button, w200 h30 gDBeaver, &DBeaver
Gui, Add, Button, w200 h30 gSkype, &Skype
Gui, Add, Button, w200 h30 gOneNote, &OneNote
Gui, Add, Button, w200 h30 gPowerShell, &PowerShell
Gui, Add, Button, w200 h30 gSnippets, &Snippets

Gui, Add, Text, ym, Workflows and Automations
Gui, Add, Button, w200  h30 gTimesheets, Timesheets
Gui, Add, Button, w200  h30 gTest, Test something


; Gui, Add, Text, x10 y+30, Projects

; Gui, Add, Pic, x150 y+30 w30 h30 gCMS, icons\Virginia.ico
; Gui, Add, Button, x+20 w200 h30 h30 gCMS, CMS








Gui, Show,x600 y50 w1000 h1000, App selector

return


GuiClose:
  ExitApp
  return

; Labels
;---------------
;---------------


Zoom:
  bringUpApp("Zoom", "C:\Program Files (x86)\Zoom\bin\Zoom.exe")
  ExitApp
  return

Trello:
  ActivateChromeTab("Trello")
  ExitApp
  return

Jira:
  ; ActivateChromeTab("Jira")
  run guis\GUI_Jira.ahk
  ExitApp
  return

Mail:
  openWorkEmail()
  Send ^1
  ExitApp
  return

Calendar:
  openWorkEmail()
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






; tools





VSCode:
  WinActivate, Visual Studio Code
  ExitApp
  return

RAD:
  WinActivate, WebSphere
  ExitApp
  return

DBeaver:
  bringUpApp("DBeaver", "C:\Users\miclandry\AppData\Local\DBeaver\dbeaver.exe -nl en")
  ExitApp
  return

Snippets:
  ActivateChromeTab("3cols")
  ExitApp
  return






;Projects




CMS:
WinActivate, Mozilla
  ; I don' think this will work... if you open the url it creates a popup and focus will be lost.
  ; bringUpApp("vaCMS", "C:\Program Files\Internet Explorer\iexplore.exe")
  ExitApp
  return


;workflows

Timesheets:
  run FSM\Timesheet.ahk
  ExitApp
  return

Test:
  Run Workers\covid-energy\homepage.ahk
  ExitApp
  return






^x::ExitApp