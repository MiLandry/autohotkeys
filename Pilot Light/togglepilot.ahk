toggle_script(script)
{
settitlematchmode 2
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

var = C:\Users\miclandry\source\autohotkeys-master\Pilot Light\Pilot Light 1.0.ahk
toggle_script(var),
return