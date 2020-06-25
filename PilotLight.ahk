;SetWorkingDir, C:\Users\miclandry\source\autohotkeys-master
;#Include %A_ScriptDir%

Menu, Tray, Icon, icons\pilot.ico


#include FunctionLib.ahk

;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;


;THIS IS THE OFFICIAL SCRIPT FOR ALL MY SYSTEMs!!!!!!

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.


;Edit context menu for pilot light
#Persistent
Menu, tray, add  ; Creates a separator line.
; Menu, tray, add, edit listofscripts, MenuHandler  
; Menu, tray, add, edit Functions, MenuHandler1  
; Menu, tray, add, edit Properties, MenuHandler2  
; Menu, tray, add, edit Program_Selector, MenuHandler3
  
return


; MenuHandler:
; {

; ;TODO use path and string concatination

; Run, C:\Program Files\Sublime Text 3\sublime_text.exe "listofscripts.txt"
; return
; }

; MenuHandler1:
; {
; Run, C:\Program Files\Sublime Text 3\sublime_text.exe "C:\Users\miclandry\source\autohotkeys-master\FunctionLib.ahk"
; return
; }

; MenuHandler2:
; {
; Run, C:\Program Files\Sublime Text 3\sublime_text.exe "C:\Users\miclandry\source\autohotkeys-master\Properties.ahk"
; return
; }

; MenuHandler3:
; {
; Run, edit "C:\Users\miclandry\source\autohotkeys-master\Program_Selector.ahk"
; return
; }




close_script(script)
{
settitlematchmode 2
DetectHiddenWindows, On
myscript = %script% 
IfWinExist, %myscript%
    {
    WinClose, %myscript%
    }
}




closeallscripts()
{
Loop, read, C:\Users\miclandry\source\autohotkeys-master\listofscripts.txt
{

var =  %A_LoopReadLine%
close_script(var)
}
}





toggleallscripts()
{
;    Loop, read, C:\Users\miclandry\source\autohotkeys-master\listofscripts.txt
{
var =  %A_LoopReadLine%

toggle_script(var)
}
}



;_____________Send F Keys



#^!F4::
Suspend, Toggle
closeallscripts()
return


F4::
closeallscripts()
return

F9::
cycleKeyboards()
return

F10::
run MouseGestures\Gestures.ahk
run Development\devhelper.ahk
run Container\Container.ahk
Return

F11::
var = fields and applying script.ahk
toggle_script(var)
return

F12::
;run Development\developmentlauncherlaptop.ahk
run C:\Users\miclandry\source\autohotkeys-master\Development\developmentlauncherlaptop.ahk
Return





#F4::F4



; F11 for some mysterious reason doesn"t work so fancy stuff here.
#F11::
Suspend, On
SendInput, {F11}
Suspend, Off
Return
#F12::F12

;_____________Top row

; ______________________ TESTING
!+t::
;MsgBox, sntahoei
run gui.ahk
return

;_____________Middle row

^!#d::
;MsgBox, sntahoei
run Debugger.ahk
return
