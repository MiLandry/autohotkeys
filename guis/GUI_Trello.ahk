#SingleInstance, force
#NoEnv
SetBatchLines -1
#include FunctionLib.ahk
#Include Guis\ButtonPlugin\Class_ImageButton.ahk
SetTitleMatchMode 2



; Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Font, cWhite


#include Guis\tool-selector-groups\trelloBoards.ahk
; #include Guis\tool-selector-groups\tools.ahk

Gui, Show,x600 y50 w1000 h1000, Trello
return


GuiClose:
  ExitApp
  return


#include Guis\tool-selector-groups\trelloBoards.handlers.ahk
; #include Guis\tool-selector-groups\tools.handlers.ahk



^x::ExitApp