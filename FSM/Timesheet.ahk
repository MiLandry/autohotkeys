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
Gui, Add, Text,y+30 , MANUAL TASK, adjust date on file, adjust day dates in file to match the week. doublecheck other stuff, then email.
Gui, Add, Text,y+30 , Send to Monika
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
  Run C:\Users\miclandry\Documents\timesheets
  FileCopy, C:\Users\miclandry\Documents\timesheets\template.doc, C:\Users\miclandry\Documents\timesheets\landry_timesheet_%TimeString%.doc
  return

  StepTwo:
    ;   open outlook, prepare an email add new ts to attachment, compose a body, specify the correct recipient..
    FormatTime, TimeString, %A_NOW%, MM-dd-yyyy
    Run C:\Users\miclandry\Documents\timesheets
    Run C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE /c ipm.note /m "Monika.Prasad@vectorconsulting.com&subject=RE: Timesheet landry%TimeString%&cc=vpenumatsa@deloitte.com&body=Timesheet Attached"

  return




GuiClose:
  ExitApp
  return