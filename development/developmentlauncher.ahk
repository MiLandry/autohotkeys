; This script will run upon pressing F12 - it loads the programming suite - including:

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


;main
ProgrammingKeyboard = Development\programmer_dvorak_layout.ahk
toggle_script(ProgrammingKeyboard)
Sleep, 30

var = Development\devhelper.ahk
toggle_script(var)


