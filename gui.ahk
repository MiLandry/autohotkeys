#SingleInstance, force

; Gui Layout
;---------------
;---------------

Gui, Font, cWhite


Gui, Add, Text, x10 y10, Hello

Gui, Add, Button, x150 y150 w200 h30 gOur_First_Button, Trello 


Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Show,x1300 y50 w500 h500, App selector
return


; Labels
;---------------
;---------------

GuiClose:
  ExitApp
  return

Our_First_Button:
  onButtonClick()
  return





; Functions
;---------------
;---------------
onButtonClick()
{
	MsgBox, "sntaoehi"
	ExitApp

}

^x::ExitApp