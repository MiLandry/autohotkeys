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
Gui, Color, Blue
Gui, Font, cBlack


Gui, Add, Text,, Table:
Gui, Add, Text,, Where column:
Gui, Add, Text,, is:
Gui, Add, Edit, vTable ym  ; The ym option starts a new column of controls.
Gui, Add, Edit, vColumn
Gui, Add, Edit, vEquals
Gui, Add, Button, default, OK  ; The label ButtonOK (if it exists) will be run when the button is pressed.
Gui, Show,, Simple Input Example
; TODO add radio button for substring search support
return  ; End of auto-execute section. The script is idle until the user does something.

GuiClose:
ButtonOK:
Gui, Submit  ; Save the input from the user to each control's associated variable.
MsgBox You entered "SELECT * FROM %Table% WHERE %Column% EQUALS %Equals%;"
ExitApp