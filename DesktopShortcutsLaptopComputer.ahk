;****** Initialization

Menu, Tray, Icon, laptop.ico

;--------------------------------------------------
;---------------------Tray Menu--------------------
;--------------------------------------------------
#Persistent  ; Keep the script running until the user exits it.
Menu, tray, add  ; Creates a separator line.
Menu, tray, add, edit computer_utilities, MenuHandler1  
return


MenuHandler1:
Run, Notepad.exe "C:\Users\miclandry\source\autohotkeys-master\static\computer_utility.ahk"
return


;**** END Initialization


;Application Launcher 2.0
; Author: Michael Landry. 

;changelog 4/21/2013:  I have now decided to split up my code into more subdivisions and will inherit them into appropriate scripts

;SOFTWARE ARCHITECHTURE OVERVIEW:  Each computer will need two individual files: a pilot light script, and a unique script that will launch applications specific
;and individualized to each computer.  This file will archive all common scripts for all machines - any change to this file needs to be copied onto each computer 
; specific script in order to reduce the amount of scripts that need to be toggled.
;The unique pilot light file hosts the script toggles themselves and must always be running.

;The plan here is to only make changes to this file if changes need to go to my entire network.
;If a change is made, this entire file needs to be copy and pasted into every computer file script so as to be able to suspend it. 
;Specific Files should be deleneated by ASNI break lines.


; List of functions handled by this script:
; Date Macro
; Google Macro
; Any added macros
; Hotkey for Windows Explorer
; Hotkey for Notepad, paint, calculator and other OS native files unless a time comes where I am using multiple OS 
; Macros for sending universal zxcv strings
; Desktop Min Max
;

;List of things NOT handled by this script but individualized:
; Specific installed programs, including MS Office, DropBox
;
;

;____________________________Reference
; Every new script that opens a program or application should be scripted so as to either launch the application if its not open, or switch to it if it is.

; ################## winkey
;  !!!!!!!!!!!!!!!! alt
;  ^^^^^^^^^^^^^^   ctrl
; +++++++++++++++++++++shift






;_________________________________IMPORT COMMON UTILITIES__________________________________________


#Include C:\Users\miclandry\source\autohotkeys-master\static\computer_utility.ahk


;_________________________________BEGIN HOMECOMPUTER SCRIPT__________________________________________

;_________________________'Function' Keys _________________________________


#f8:: 
SetTitleMatchMode 2
IfWinExist - Gmail
{
    WinActivate
    WinMaximize
}
else
{
    run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --app=https://mail.google.com/mail;Application Launcher 2.0
    WinWait - Gmail
    WinActivate
    WinMaximize
}
return
;_________________________________________________KEYBOARD REMAPPING_________________________________________________

;  ~~~~~~~~~~~TOP ROW ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;********** Browser*************************



#e::
IfWinExist Google Chrome
{
    WinActivate
    MsgBox 'google chrome winactivated'
    WinMaximize
}
else
{
    Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
    WinWait Google Chrome
    MsgBox 'Chrome launched'
    WinActivate
    WinMaximize
}
Return




#!r:: 
SetTitleMatchMode 2
IfWinExist OneNote
{
    WinActivate
}
else
{
    run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\OneNote 2013
    WinWait OneNote
    WinActivate
}
Return

;Tasks

#t:: run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe  --app=https://mail.google.com/tasks/canvas?pli=1

; open Calendar
#!t:: run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe  --app=https://www.google.com/calendar/render?tab=wc


;  ~~~~~~~~~~~MIDDLE ROW ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+Capslock:: Return
;Capslock:: {ackspace}

#a::
IfWinExist Dropbox
{
    WinActivate
}


else
{
    run C:\Dropbox
    WinWait Dropbox
    WinActivate
}
Return


#s:: run C:\




;  ~~~~~~~~~~~BOTTOM ROW ~~~~~~~~~~~~~~~~~





#!d:: run "C:\Computer Data\REAL Documents"
#m:: run "C:\Program Files (x86)\iTunes\iTunes.exe"


#IfWinActive ahk_class ConsoleWindowClass
^V::
SendInput {Raw}%clipboard%
return
#IfWinActive



