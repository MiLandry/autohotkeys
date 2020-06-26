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



Gui, Add, Text, x10 y10, Admin
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\trello.ico
Gui, Add, Button, x+20 w200 h30 gTrello, &Trello
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\outlook.ico
Gui, Add, Button, x+20 w200 h30 h30 gMail, &Mail
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\calendar.ico
Gui, Add, Button, x+20 w200 h30 h30 gCalendar, Calendar

Gui, Add, Text, x10 y+30, Tools
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\powershell.ico
Gui, Add, Button, x+20 w200 h30 h30 gPowerShell, &PowerShell
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\vscode.ico
Gui, Add, Button, x+20 w200 h30 h30 gVSCode, VS&Code
Gui, Add, Pic, x150 y+30 w30 h30 gSnippets, Guis\snippets.ico
Gui, Add, Button, x+20 w200 h30 h30 gSnippets, &Snippets


Gui, Add, Text, x10 y+30, Test
Gui, Add, Button, vBT1 w200 hwndHBT1, Button 1`nLine 2
Opt1 := [0, 0x80CF0000, , "White", "H", , "Red", 4]         ; normal flat background & text color
Opt2 := [ , "Red"]                                          ; hot flat background color
Opt5 := [ , , ,"Gray"]                                      ; defaulted text color -> animation


Gui, Show,x1300 y50 w500 h500, App selector

; style stuff
;---------------
;---------------
If !ImageButton.Create(HBT1, Opt1, Opt2, , , Opt5)
   MsgBox, 0, ImageButton Error Btn1, % ImageButton.LastError
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
  openWorkEmail()
  Send ^1
  ExitApp
  return

Calendar:
  openWorkEmail()
  Send ^2
  ExitApp
  return

PowerShell:
  ;bringUpApp("powershell", "C:\Users\miclandry\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell")
  Run C:\Users\miclandry\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell
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



^x::ExitApp