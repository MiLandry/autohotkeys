Menu, Tray, Icon, icons\pilot.ico
#include FunctionLib.ahk
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#Persistent







closeallscripts()
{
Loop, read, listofscripts.txt
{

var =  %A_LoopReadLine%
close_script(var)
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
run Test.ahk
return

;_____________Middle row

^!#d::
;MsgBox, sntahoei
run Debugger.ahk
return

^!#k::
;MsgBox, sntahoei
AHKPanic(0,0,0,0)
return

