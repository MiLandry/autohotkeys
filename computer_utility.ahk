SetTitleMatchMode 2

/*

Responsibilities of this script:
  add shortcut macros to keyboard combinations (calendar, task, google music, et al)

*/

; ## win
; !!!! alt
; ^^^ Ctrl

;_______________________________________________'Function Row'  _________________________________

;******* RESERVED******
;F1 windows
;F4 pilot light
;F9 pilot light
;F10 pilot light
;F11 pilot light
;F12 pilot light




;~~~~~~~~~~~~~~~~~~  Date Send~~~~~~~~~~~~~



#F2::
FormatTime, TimeString, %A_NOW%, MM/dd/yyyy
Send, %TimeString%
return

#!F2::
FormatTime, TimeString, %A_NOW%, MM-dd-yyyy
Send, %TimeString%
return

#F3::
Send, 06/24/1986
return

#!F3::
Send, 06-24-1986
return

;***** END DATE SENDER


;************Thesaurus*******
Shift & F7::
{ 
   BlockInput, on 
   prevClipboard = %clipboard% 
   clipboard = 
   Send, ^c 
   BlockInput, off 
   ClipWait, 2 
   if ErrorLevel = 0 
   { 
      searchQuery=%clipboard% 
      GoSub, thesaurus
   } 
   clipboard = %prevClipboard% 
   return 
} 

thesaurus:
   StringReplace, searchQuery, searchQuery, `r`n, %A_Space%, All 
   Loop 
   { 
      noExtraSpaces=1 
      StringLeft, leftMost, searchQuery, 1 
      IfInString, leftMost, %A_Space% 
      { 
         StringTrimLeft, searchQuery, searchQuery, 1 
         noExtraSpaces=0 
      } 
      StringRight, rightMost, searchQuery, 1 
      IfInString, rightMost, %A_Space% 
      { 
         StringTrimRight, searchQuery, searchQuery, 1 
         noExtraSpaces=0 
      } 
      If (noExtraSpaces=1) 
         break 
   } 
   StringReplace, searchQuery, searchQuery, \, `%5C, All 
   StringReplace, searchQuery, searchQuery, %A_Space%, +, All 
   StringReplace, searchQuery, searchQuery, `%, `%25, All 
   IfInString, searchQuery, . 
   { 
      IfInString, searchQuery, + 
         Run, chrome.exe http://thesaurus.com/browse/%searchQuery% 
      else 
         Run, chrome.exe %searchQuery% 
   } 
   else 
      Run, chrome.exe http://thesaurus.com/browse/%searchQuery% 
return



;**** END APPLICATION LAUNCHERS



;_________________________________________________KEYBOARD REMAPPING_________________________________________________

;  ~~~~~~~~~~~TOP ROW ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;Tasks
#t::
{
openGoogleTasks()
return
}

; open Calendar
#!t::
{
	openGoogleCalendar()
	return
}

;  ~~~~~~~~~~~MIDDLE ROW ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

!Capslock:: send {Del}
+Capslock:: Return

;************************ Flashcards
#f:: Run "C:\Program Files (x86)\Anki\anki.exe"


;************************ app switcher
+#a::
{
;msgbox, open app switcher
 Run ..\guis\AppSwitcher.ahk
 return
}




;*********************************Auto Google
SendMode Input 
RegRead, OutputVar, HKEY_CLASSES_ROOT, http\shell\open\command 
StringReplace, OutputVar, OutputVar," 
SplitPath, OutputVar,,OutDir,,OutNameNoExt, OutDrive 
browser=%OutDir%\%OutNameNoExt%.exe 

^g:: 
WinActivate, ahk_exe chrome.exe
Send ^t
return

;**** Toggle sound using ctrl shift s

^+s::
Run, mmsys.cpl
WinWait,Sound
ControlSend,SysListView321,{Down}
ControlGet, isEnabled, Enabled,,&Set Default
if(!isEnabled)
{
  ControlSend,SysListView321,{Down 2}
}
ControlClick,&Set Default
ControlClick,OK
WinWaitClose
SoundPlay, *-1
return



;  ~~~~~~~~~~~BOTTOM ROW ~~~~~~~~~~~~~~~~~



;******** END STRING MACROS

;idk
/*
#IfWinActive ahk_class ConsoleWindowClass
^V::
SendInput {Raw}%clipboard%
return
#IfWinActive
*/