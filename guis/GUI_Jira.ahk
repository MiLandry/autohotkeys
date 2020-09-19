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

Gui, Add, Text, x10 y10, Jira Stories
; Gui, Add, Pic, x150 y+30 w30 h30 gZoom, icons\Zoom.ico
Gui, Add, Button, x+20 y+30 w200 h30 gOpen, &Open your stories
Gui, Add, Button, y+30 w200 h30 gByNum, &Open story by number

; Gui, Add, Text, x10 y+30, Tools

; Gui, Add, Pic, x150 y+30 w30 h30 gVSCode, Guis\vscode.ico
; Gui, Add, Button, x+20 w200 h30 h30 gVSCode, VS&Code


Gui, Show,x1300 y50 w500 h1000, GUI Template

return


GuiClose:
  ExitApp
  return

; Labels
;---------------
;---------------

Open:
  ActivateChromeTabByTitle("Jira")
  ExitApp
  return

byNum:
  InputBox, UserInput, Phone Number, Please enter a phone number., , 640, 480
  if ErrorLevel
      MsgBox, CANCEL was pressed.
  else
      ; MsgBox, You entered "%UserInput%"
      Test = https://vacms.atlassian.net/browse/VAJIRA-%UserInput%
      MsgBox %Test%
      openNewChromeTab(Test)
  ExitApp
  return


^x::ExitApp