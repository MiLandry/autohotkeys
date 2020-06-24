
Menu, Tray, Icon, C:\Users\miclandry\source\autohotkeys-master\icons\engine.ico

SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;run runs the script as a separate script, incclude just adds that code to this script
run C:\Users\miclandry\source\autohotkeys-master\mouse gestures\Gestures.ahk
run C:\Users\miclandry\source\autohotkeys-master\Development\devhelper.ahk

#Persistent  ; Keep the script running until the user exits it.
Menu, tray, add  ; Creates a separator line.
Menu, tray, add, edit computer_utilities, MenuHandler1  
return

#include C:\Users\miclandry\source\autohotkeys-master\FunctionLib.ahk
#Include C:\Users\miclandry\source\autohotkeys-master\computer_utility.ahk
#Include engine\spitters\Spitter.ahk



/*
purpose:
	this script is responsible for calling other scripts that customize the comupter
	this script is also a wrapper around computer utility
wpwdcharlieppwdvictor
scripts included here:
  computer utility

scripts that are automatically turned on when this is run
mouse gestures
middle mouse guy
dev helper (you want to keep this guy separate because it also comes with edit files)

*/







MenuHandler1:
{   
Run, edit "C:\Users\miclandry\source\autohotkeys-master\computer_utility.ahk"
return
}



;____________________________Reference
; ################## winkey
;  !!!!!!!!!!!!!!!! alt
;  ^^^^^^^^^^^^^^   ctrl
; +++++++++++++++++++++shift








