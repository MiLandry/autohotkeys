#SingleInstance, force
; #include C:\Users\miclandry\source\autohotkeys-master\Program_selector.ahk
#include C:\Users\miclandry\source\autohotkeys-master\Properties.ahk
#include C:\Users\miclandry\source\autohotkeys-master\FunctionLib.ahk


; Gui Layout
;---------------
;---------------

Gui, Font, cWhite


Gui, Add, Text, x10 y10, Hello

Gui, Add, Button, x150 y150 w200 h30 gOur_First_Button, work or home


Gui, +AlwaysOnTop
Gui, Color, Green
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
    if (isWorkComputer())
    {
        	MsgBox, "work computer"
    }
    else
    {
            MsgBox, "home computer"
    }

}

^x::ExitApp