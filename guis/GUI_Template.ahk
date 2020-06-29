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



Gui, Add, Text, x10 y10, Sample Header text
Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\trello.ico
Gui, Add, Button, x+20 w200 h30 gTrello, &Trello


; Gui, Add, Text, x10 y+30, Another header
; Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\vscode.ico
; Gui, Add, Button, x+20 w200 h30 h30 gVSCode, VS&Code



; Gui, Add, Text, x10 y+30, Test
; Gui, Add, Button, vBT1 w200 hwndHBT1, Button 1`nLine 2
; Opt1 := [0, 0x80CF0000, , "White", "H", , "Red", 4]         ; normal flat background & text color
; Opt2 := [ , "Red"]                                          ; hot flat background color
; Opt5 := [ , , ,"Gray"]                                      ; defaulted text color -> animation


Gui, Show,x1300 y50 w500 h500, My Cool Title

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

