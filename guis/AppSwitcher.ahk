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

Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Show,x1300 y50 w500 h500, App selector
Gui, Font, cWhite


Gui, Add, Text, x10 y10, Admin
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\trello.ico
Gui, Add, Button, x+20 w200 h30 gTrello, Trello
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\outlook.ico
Gui, Add, Button, x+20 w200 h30 h30 gMail, Mail
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\calendar.ico
Gui, Add, Button, x+20 w200 h30 h30 gCalendar, Calendar

Gui, Add, Text, x10 y+30, Tools
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\powershell.ico
Gui, Add, Button, x+20 w200 h30 h30 gPowerShell, PowerShell
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\vscode.ico
Gui, Add, Button, x+20 w200 h30 h30 gVSCode, VSCode
Gui, Add, Pic, x150 y+30 w30 h30 gSnippets, Guis\snippets.ico
Gui, Add, Button, x+20 w200 h30 h30 gSnippets, Snippets


Gui, Add, Text, x10 y+30, Test
Gui, Add, Button, vBT1 w200 hwndHBT1, Button 1`nLine 2

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


Snippets:  
  ActivateChromeTab("3cols")
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