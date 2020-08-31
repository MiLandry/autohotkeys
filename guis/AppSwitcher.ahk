#SingleInstance, force
#NoEnv
SetBatchLines -1
#include FunctionLib.ahk
#Include Guis\ButtonPlugin\Class_ImageButton.ahk
SetTitleMatchMode 2



; Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Font, cWhite



Gui, Add, Pic, w30 h30 gZoom, icons\Zoom.ico
Gui, Add, Pic, w30 h30 gTrello, Guis\trello.ico
Gui, Add, Pic, w30 h30 gJira, Guis\Jira.ico
Gui, Add, Pic, w30 h30 gMail, Guis\outlook.ico
Gui, Add, Pic, w30 h30 gCalendar, Guis\calendar.ico


Gui, Add, Text, y+30, Tools

Gui, Add, Pic, w30 h30 gVSCode, Guis\vscode.ico
Gui, Add, Pic, w30 h30 gGitHub, icons\github.ico
Gui, Add, Pic, w30 h30 gRAD, icons\Rad.ico
Gui, Add, Pic, w30 h30 gDBeaver, icons\Database.ico
Gui, Add, Pic, w30 h30 gSkype, icons\skype.ico
Gui, Add, Pic, w30 h30 gOneNote, icons\onenote.ico
Gui, Add, Pic, w30 h30 gPowerShell, Guis\powershell.ico
Gui, Add, Pic, w30 h30 gSnippets, Guis\snippets.ico


Gui, Add, Text, y+30, Apps under development

Gui, Add, Pic, w30 h30 gVaCovid, Guis\fixme.ico


Gui, Add, Text, y+30, IDEs

Gui, Add, Pic, w30 h30 gOpenAHKIDE, Guis\vscode.ico
Gui, Add, Pic, w30 h30 gOpenVACOVIDIDE, Guis\vscode.ico


; Column for buttons


Gui, Add, Button, ym w200 h30 gZoom, &Zoom ;ym adds column
Gui, Add, Button, w200 h30 gTrello, &Trello
Gui, Add, Button,w200 h30 gJira, &Jira
Gui, Add, Button,w200 h30 gMail, &Mail
Gui, Add, Button,w200 h30 gCalendar, Calendar

;tools
Gui, Add, Button, y+50 w200 h30 gVSCode, VS&Code
Gui, Add, Button, w200 h30 gGitHub, Github
Gui, Add, Button, w200 h30 gRAD, RAD
Gui, Add, Button, w200 h30 gDBeaver, &DBeaver
Gui, Add, Button, w200 h30 gSkype, &Skype
Gui, Add, Button, w200 h30 gOneNote, &OneNote
Gui, Add, Button, w200 h30 gPowerShell, &PowerShell
Gui, Add, Button, w200 h30 gSnippets, &Snippets

;apps under development

Gui, Add, Button, y+50 w200 h30 gVaCovid, VA Covid


;IDES

Gui, Add, Button, y+50  w200 h30 gOpenAHKIDE, AHK Code
Gui, Add, Button, w200 h30 gOpenVACOVIDIDE, COVID Code




;NEW COLUMN OF WIDGETS

Gui, Add, Text, ym, Workflows and Automations
Gui, Add, Button, w200  h30 gTimesheets, Timesheets
Gui, Add, Button, w200  h30 gIonicserve, ionic serve
Gui, Add, Button, w200  h30 gTest, Test something
Gui, Add, Text , y+30, COVID MOBILE ENERGY
Gui, Add, Button, w200  h30 gMemDetails, member details
Gui, Add, Button, w200  h30 gIncome, member income
Gui, Add, Button, w200  h30 gAddress, address
Gui, Add, Button, w200  h30 gEnergy, energy
Gui, Add, Button, w200  h30 gAllTheThings, ALL THE THINGS

; Gui, Add, Text, x10 y+30, Projects

; Gui, Add, Pic, x150 y+30 w30 h30 gCMS, icons\Virginia.ico
; Gui, Add, Button, x+20 w200 h30 h30 gCMS, CMS


;NEW COLUMN OF WIDGETS

Gui, Add, Text, ym, Dates and hotstrings and spitters
Gui, Add, Button, w200  h30 gTodayDate, Today mm/dd/yyyy




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
  ActivateChromeTabByTitle("Trello")
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

GitHub:
  ActivateChromeTabByURL("github")
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
  ActivateChromeTabByTitle("3cols")
  ExitApp
  return






;Projects

VaCovid:
  ActivateChromeTabByTitle("VA COVID Response")
  ExitApp
  return


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

Ionicserve:
  WinActivate, Windows PowerShell
  Sleep, 1000
  send ionic serve
  Sleep, 500
  send {Enter}
  ExitApp
  return


MemDetails:
  Run Workers\covid-energy\memberdetail.ahk
  ExitApp
  return
Income:
  Run Workers\covid-energy\income.ahk
  ExitApp
  return
Address:
  Run Workers\covid-energy\address.ahk
  ExitApp
  return
Energy:
  Run Workers\covid-energy\energy.ahk
  ExitApp
  return
AllTheThings:
  Run Workers\covid-energy\all.ahk
  ExitApp
  return





OpenAHKIDE:
  WinActivate, Visual Studio Code
  Sleep, 1000
  send ^+p
  Sleep 500
  send fileopenfold
  Sleep 200
  send {Enter}
  Sleep 200
  send autohotkeys-master
  ; Sleep 300
  ; send {Tab}
  Sleep 2000
  send {Enter}
    Sleep 2000
  send {Enter}
  ExitApp
  return

OpenVACOVIDIDE:
  WinActivate, Visual Studio Code
  Sleep, 1000
  send ^+p
  Sleep 500
  send fileopenfold
  Sleep 200
  send {Enter}
  Sleep 200
  send va-covid19
  ; Sleep 300
  ; send {Tab}
  Sleep 2000
  send {Enter}
    Sleep 2000
  send {Enter}
  ExitApp
  return


TodayDate:
  Run Workers\spit-today.ahk
  ; bringUpApp("Zoom", "C:\Program Files (x86)\Zoom\bin\Zoom.exe")
  ExitApp
  return













Test:
  var := GetUwpAppName()
  stdout := FileOpen("*", "w")
  val := "var"
  MsgBox, % (val .= "`r`" + var)
  stdout.WriteLine(val)
  ExitApp
  return


^x::ExitApp



