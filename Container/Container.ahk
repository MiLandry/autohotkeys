SetWorkingDir, C:\Users\miclandry\source\autohotkeys-master
Menu, Tray, Icon, icons\container.ico

;#Include %A_ScriptDir%

;run runs the script as a separate script, incclude just adds that code to this script
run  MouseGestures\Gestures.ahk
run Development\devhelper.ahk

#Persistent  ; Keep the script running until the user exits it.
;Menu, tray, add  ; Creates a separator line.
;Menu, tray, add, edit computer_utilities, MenuHandler1  
return



/*
This is for all the little modifications you need but don't want a separate "script" in the taskbar.
*/
MsgBox, a;slkdjfaf

;#include ..\FunctionLib.ahk
;#Include computer_utility.ahk
;#Include Container\spitters\Spitter.ahk






