close_script(script)
{
settitlematchmode 2
DetectHiddenWindows, On

myscript = %script% 
msgbox target script is %myscript%
IfWinExist, %myscript%
    {
    msgbox trying to close %myscript%
    WinClose, %myscript%
    }
}



close_script("C:\Users\miclandry\source\autohotkeys-master\keyboard\Dvorak.ahk")

close_script("C:\Users\miclandry\source\autohotkeys-master\engine\engine.ahk")
