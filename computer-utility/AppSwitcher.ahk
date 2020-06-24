#SingleInstance, force

; Gui Layout
;---------------
;---------------

Gui, Font, cWhite


Gui, Add, Text, x10 y10, Hello

Gui, Add, Button, x150 y150 w200 h30 gOur_First_Button, LoadTrello


Gui, +AlwaysOnTop
Gui, Color, Black
Gui, Show,x1300 y50 w500 h500, App selector
return


; Labels
;---------------
;---------------

GuiClose:
  ExitApp
  return

Our_First_Button:
  ActivateChromeTab("Trello")
  return





; Functions
;---------------
;---------------
onButtonClick()
{
	MsgBox, "trying to load trello"
	settitlematchmode 2
    winactivate, Google Chrome
	ExitApp

}


; Activates tab in Google Chrome if it exists
; Returns true if exists, false if does not exist
; Leaves original tab activated if sought tab does not exist
; Known issue: will stop searching tabs if two tabs have same name
ActivateChromeTab(soughtTab)
{
  SetTitleMatchMode 2 ; Allows for partial matches in window titles

  IfWinNotExist Google Chrome
  {
    return false
  }

  WinActivate Google Chrome
  WinWaitActive Google Chrome
  WinGetTitle, currentTab, A
  firstTab := currentTab

  if (InStr(currentTab, soughtTab) > 0)
  {
    return true
  }

  Loop
  {
    Send {CtrlDown}{Tab}{CtrlUp}
    Sleep 50 ; Requires some time to update the window titles
    WinGetTitle, currentTab, A
    foundTab := InStr(currentTab, soughtTab) > 0
  }
  Until (foundTab || currentTab == firstTab)

  return foundTab
}


^x::ExitApp