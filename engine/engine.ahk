Menu, Tray, Icon, C:\Users\miclandry\source\autohotkeys-master\icons\engine.ico

run C:\Users\miclandry\source\autohotkeys-master\Middle_Mouse_Button_In_Win_Explorer.ahk
run C:\Users\miclandry\source\autohotkeys-master\mouse gestures\Gestures.ahk
run C:\Users\miclandry\source\autohotkeys-master\Development\devhelper.ahk

;--------------------------------------------------
;---------------------Tray Menu--------------------
;--------------------------------------------------
#Persistent  ; Keep the script running until the user exits it.
Menu, tray, add  ; Creates a separator line.
Menu, tray, add, edit computer_utilities, MenuHandler1  
return

#include C:\Users\miclandry\source\autohotkeys-master\FunctionLib.ahk
#include C:\Users\miclandry\source\autohotkeys-master\Global_Variables.ahk
#Include C:\Users\miclandry\source\autohotkeys-master\computer_utility.ahk


/*
purpose:
	this script is responsible for calling other scripts that customize the comupter
	this script is also a wrapper around computer utility

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








