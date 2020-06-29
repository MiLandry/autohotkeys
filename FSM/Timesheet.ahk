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



Gui, Add, Text, x10 y10, copy the timesheet teplate, name it correctly, and save into the timesheet folder
; Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\trello.ico
Gui, Add, Button, y+30 w200 h30 gStepOne, Automate
Gui, Add, Text,y+30 , MANUAL TASK, doublecheck the date, you may have to change to saturday.
Gui, Add, Text,y+30 , MANUAL TASK, fill out the TS
Gui, Add, Text,y+30 , get approval?? idk more details needed
Gui, Add, Button, y+30 w200 h30 gStepTwo, Automate email


; Gui, Add, Text, x10 y+30, Another header
; Gui, Add, Pic, x150 y+30 w30 h30 gTrello, Guis\vscode.ico
; Gui, Add, Button, x+20 w200 h30 h30 gVSCode, VS&Code



; Gui, Add, Text, x10 y+30, Test
; Gui, Add, Button, vBT1 w200 hwndHBT1, Button 1`nLine 2
; Opt1 := [0, 0x80CF0000, , "White", "H", , "Red", 4]         ; normal flat background & text color
; Opt2 := [ , "Red"]                                          ; hot flat background color
; Opt5 := [ , , ,"Gray"]                                      ; defaulted text color -> animation


Gui, Show,x1300 y50 w500 h1000, My Cool Title

; style stuff
;---------------
;---------------
; If !ImageButton.Create(HBT1, Opt1, Opt2, , , Opt5)
;    MsgBox, 0, ImageButton Error Btn1, % ImageButton.LastError
;    return




; Labels
;---------------
;---------------


StepOne:
    ;   copy and rename the file.. just use datestamp as name...
    FormatTime, TimeString, %A_NOW%, MM-dd-yyyy

  FileCopy, C:\Users\miclandry\Documents\timesheets\template.doc, C:\Users\miclandry\Documents\timesheets\landry_timesheet_%TimeString%.doc
  return

  StepTwo:
    ;   open outlook, prepare an email add new ts to attachment, compose a body, specify the correct recipient..
    FormatTime, TimeString, %A_NOW%, MM-dd-yyyy
    MsgBox, more details needed
  return




GuiClose:
  ExitApp
  return