#SingleInstance, force
#NoEnv
SetBatchLines -1
#include FunctionLib.ahk
#Include Guis\ButtonPlugin\Class_ImageButton.ahk
SetTitleMatchMode 2



; Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Font, cWhite



#include Guis\tool-selector-groups\ides.ahk

Gui, Show,x600 y50 w1000 h1000, IDE
return


GuiClose:
  ExitApp
  return


#include Guis\tool-selector-groups\ides.handlers.ahk
