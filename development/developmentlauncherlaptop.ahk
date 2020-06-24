; This script will run upon pressing F12 - it toggles the programming suite - including:

; keyboard remapping
; optional scripts depending on scope
; markup scripts


DetectHiddenWindows, On




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


ProgrammingKeyboard = C:\Users\miclandry\source\autohotkeys-master\Development\programmer_dvorak_layout.ahk
toggle_script(ProgrammingKeyboard)
Sleep, 30





