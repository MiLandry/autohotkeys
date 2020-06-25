/*
This script is wired to the f10 button when Pilot light is running
Its job is to toggle the F10 script on and off

The F10 script itself is responsible for toggling its buddies:
  Mouse Gestures
  Middle Mouse button Helper


*/



#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.







;MAIN

;msgbox f10launcher fired

var = DesktopShortcuts.ahk
toggle_script(var)


var = mouse gestures\Gestures.ahk
toggle_script(var)


toggle_script(script)
{
DetectHiddenWindows, On
IfWinExist, %script%
    {

    WinClose, %script%
;    MsgBox "Closing %script%"
    }
else
{
    run %script%
;    MsgBox "Opening %script%"
}
Return
}