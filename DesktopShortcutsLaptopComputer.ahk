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
Run, Notepad.exe "computer_utility.ahk"
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


#Include computer_utility.ahk


;_________________________________BEGIN HOMECOMPUTER SCRIPT__________________________________________

;_________________________'Function' Keys _________________________________


;_________________________________________________KEYBOARD REMAPPING_________________________________________________

;  ~~~~~~~~~~~TOP ROW ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;********** Browser*************************




;  ~~~~~~~~~~~MIDDLE ROW ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+Capslock:: Return
;Capslock:: {ackspace}



#s:: run C:\




;  ~~~~~~~~~~~BOTTOM ROW ~~~~~~~~~~~~~~~~~




#IfWinActive ahk_class ConsoleWindowClass
^V::
SendInput {Raw}%clipboard%
return
#IfWinActive



