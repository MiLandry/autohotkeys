#SingleInstance, force
#NoEnv
SetBatchLines -1
;#include C:\Users\miclandry\source\autohotkeys-master\Properties.ahk
#include C:\Users\miclandry\source\autohotkeys-master\FunctionLib.ahk
#Include Guis\ButtonPlugin\Class_ImageButton.ahk
SetTitleMatchMode 2



; Gui Layout
;---------------
;---------------

Gui, Font, cWhite


Gui, Add, Text, x10 y10, Admin
Gui, Add, Button, x150 y20 w200 h30 gTrello, Trello
Gui, Add, Button, x150 y+30 w200 h30 gMail, Mail
Gui, Add, Button, x150 y+30 w200 h30 gCalendar, Calendar

Gui, Add, Text, x10 y+30, Tools
Gui, Add, Button, x150 y+30 w200 h30 gPowerShell, PowerShell
Gui, Add, Button, x150 y+30 w200 h30 gVSCode, VSCode



Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Show,x1300 y50 w500 h500, App selector
return

GuiClose:
  ExitApp
  return

; Labels
;---------------
;---------------


Trello:
  ActivateChromeTab("Trello")
  ExitApp
  return

Mail:
  openOutlook()
  ExitApp
  return

Calendar:
  openOutlook()
  ; Send ^{2} 
  Send ^2
  ExitApp
  return

PowerShell:
  Run %SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe
  ExitApp
  return

VSCode:
  WinActivate, Visual Studio Code
  ExitApp
  return

; Functions
;---------------
;---------------
onButtonClick()
{
  return
}


^x::ExitApp