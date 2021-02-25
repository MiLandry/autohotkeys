#SingleInstance, force
#NoEnv
SetBatchLines -1
#include FunctionLib.ahk
#Include Guis\ButtonPlugin\Class_ImageButton.ahk
SetTitleMatchMode 2



; Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Font, cWhite





#include Guis\tool-selector-columns\firstColumn.ahk
#include Guis\tool-selector-columns\secondColumn.ahk
#include Guis\tool-selector-columns\thirdColumn.ahk




Gui, Show,x600 y50 w1000 h1000, Tool Selector




return


GuiClose:
  ExitApp
  return

#include Guis\tool-selector-columns\firstColumn.handlers.ahk
#include Guis\tool-selector-columns\secondColumn.handlers.ahk
#include Guis\tool-selector-columns\thirdColumn.handlers.ahk

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

CatWrangler:
  ActivateChromeTabByURL("Auth0 React Sample")
  ExitApp
  return

CatWranglerApi:
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
MemDetailsNoIncome:
  Run Workers\covid-energy\memberdetailnoincome.ahk
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


