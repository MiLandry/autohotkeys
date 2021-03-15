#SingleInstance, force
#NoEnv
SetBatchLines -1
#include FunctionLib.ahk
#Include Guis\ButtonPlugin\Class_ImageButton.ahk
SetTitleMatchMode 2



; Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Font, cWhite


#include Guis\tool-selector-columns\firstColumn.ahk
Gui, Add, Text, x+80 ym,
#include Guis\tool-selector-columns\secondColumn.ahk
Gui, Add, Text, x+80 ym,
#include Guis\tool-selector-columns\thirdColumn.ahk


Gui, Show,x600 y50 w1000 h1000, Tool Selector

return

GuiClose:
  ExitApp
  return

#include Guis\tool-selector-columns\firstColumn.handlers.ahk
#include Guis\tool-selector-columns\secondColumn.handlers.ahk
#include Guis\tool-selector-columns\thirdColumn.handlers.ahk




^x::ExitApp


