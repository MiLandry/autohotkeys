#SingleInstance, force
#NoEnv
SetBatchLines -1
#include FunctionLib.ahk
#Include Guis\ButtonPlugin\Class_ImageButton.ahk
SetTitleMatchMode 2



; Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Font, cWhite





; first column
Gui, Add, Text, y+30, Tools

Gui, Add, Button, y+30 w200 h30 gZoom, &Zoom
Gui, Add, Button, w200 h30 gTrello, &Trello
Gui, Add, Button,w200 h30 gJira, &Jira
Gui, Add, Button,w200 h30 gMail, &Mail
Gui, Add, Button,w200 h30 gCalendar, Calendar

Gui, Add, Text, y+30, Software tools

Gui, Add, Button, y+30 w200 h30 gVSCode, VS&Code
Gui, Add, Button, w200 h30 gGitHub, Github
Gui, Add, Button, w200 h30 gOneNote, &OneNote
Gui, Add, Button, w200 h30 gPowerShell, &PowerShell
Gui, Add, Button, w200 h30 gSnippets, &Snippets



Gui, Add, Text, y+30, Apps under development

Gui, Add, Button, y+30 w200 h30 gCatWrangler, CatWrangler
Gui, Add, Button, w200 h30 gCatWranglerApi, CatWranglerApi

Gui, Add, Text, y+30, IDEs


#include Guis\foo.ahk




Gui, Add, Button, y+50 w200 h30 gVaCovid, VA Covid


;IDES

Gui, Add, Button, y+50  w200 h30 gOpenAHKIDE, AHK Code
Gui, Add, Button, w200 h30 gOpenVACOVIDIDE, COVID Code




;NEW COLUMN OF WIDGETS

Gui, Add, Text, ym, Workflows and Automations
Gui, Add, Button, w200  h30 gTimesheets, Timesheets
Gui, Add, Button, w200  h30 gIonicserve, ionic serve
Gui, Add, Button, w200  h30 gCiscoVpn, log into client vpn
Gui, Add, Button, w200  h30 gTest, Test something





Gui, Add, Text , y+30, COVID MOBILE ENERGY
Gui, Add, Button, w200  h30 gMemDetails, member details
Gui, Add, Button, w200  h30 gMemDetailsNoIncome, member details no income
Gui, Add, Button, w200  h30 gIncome, member income
Gui, Add, Button, w200  h30 gAddress, address
Gui, Add, Button, w200  h30 gEnergy, energy
Gui, Add, Button, w200  h30 gAllTheThings, ALL THE THINGS

Gui, Add, Text , y+30, IN-HOME
Gui, Add, Button, w200  h30 gVendorId, VendorId

Gui, Add, Text , y+30, GRANTS
Gui, Add, Button, w200  h30 gGrantsVendorId, GrantsVendorId

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



Zoom:
  bringUpApp("Zoom", getZoomPath())
  ExitApp
  return

Trello:
  ;ActivateChromeTabByTitle("Trello")
  bringUpApp("Trello","C:\Program Files\WindowsApps\45273LiamForsyth.PawsforTrello_2.11.10.0_x64__7pb5ddty8z1pa\app\Trello.exe")
  ExitApp
  return

Jira:
  ; ActivateChromeTabByTitle("Jira")
  run guis\GUI_Jira.ahk
  ExitApp
  return

Mail:
  openEmail()
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

CiscoVpn:
  Run Workers\vpn\logcisco.ahk
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

VendorId:
  Run Workers\in-home\vendor-id.ahk
  ExitApp
  return

GrantsVendorId:
  Run Workers\grants\vendor-id.ahk
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

