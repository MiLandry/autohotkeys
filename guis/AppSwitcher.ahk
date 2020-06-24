#SingleInstance, force
;#include C:\Users\miclandry\source\autohotkeys-master\Properties.ahk
#include C:\Users\miclandry\source\autohotkeys-master\FunctionLib.ahk



; Gui Layout
;---------------
;---------------

Gui, Font, cWhite


Gui, Add, Text, x10 y10, Admin
Gui, Add, Button, x150 y20 w200 h30 gTrello, Trello
Gui, Add, Button, x150 y+30 w200 h30 gMail, Mail

Gui, Add, Text, x10 y+30, Tools
Gui, Add, Button, x150 y+30 w200 h30 gPowerShell, PowerShell
; Gui, Add, Button, x150 y+30 w200 h30 gMail, Mail



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

PowerShell:
  Run %SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe
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