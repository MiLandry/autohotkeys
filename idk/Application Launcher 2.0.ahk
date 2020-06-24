;Application Launcher 2.0
; Copyright Michael Landry. 

;SOFTWARE ARCHITECHTURE OVERVIEW:  Each computer will need two individual files: a pilot light script, and a unique script that will launch applications specific
;and individualized to each computer.  This file will archive all common scripts for all machines - any change to this file needs to be copied onto each computer 
; specific script in order to reduce the amount of scripts that need to be toggled.
;The unique pilot light file hosts the script toggles themselves and must always be running.

;The plan here is to only make changes to this file if changes need to go to my entire network.
;If a change is made, this entire file needs to be copy and pasted into every computer file script so as to be able to suspend it. 
;Specific Files should be deleneated by ASNI break lines.


; List of functions handled by this script:
; Date Macro
; Google Macro
; Any added macros
; Hotkey for Windows Explorer
; Hotkey for Notepad, paint, calculator and other OS native files unless a time comes where I am using multiple OS 
; Macros for sending universal zxcv strings
; Desktop Min Max
;Markup Helper

;List of things NOT handled by this script but individualized:
; Specific installed programs, including MS Office, DropBox
;
;

;____________________________Reference
; Every new script that opens a program or application should be scripted so as to either launch the application if its not open, or switch to it if it is.

; ################## winkey
;  !!!!!!!!!!!!!!!! alt
;  ^^^^^^^^^^^^^^   ctrl











;_______________________________________________________START COMMON APPLICATION LAUNCHER____________________________________________________________________

#u::Reload

;~~~~~~~~~~~~~~~~~~Application launchers~~~~~~~~~~~~~


;********Notepad***********

F5::
IfWinExist Untitled - Notepad
{
    WinActivate
}
else
{
    Run Notepad
    WinWait Untitled - Notepad
    WinActivate
}
Return


;********Calculator***********
F6::
IfWinExist Calculator
{
    WinActivate
}
else
{
    Run %windir%\system32\calc.exe
    WinWait Calculator
    WinActivate
}
Return

;********Paint***********
F7::
IfWinExist Untitled - Paint
{
    WinActivate
}
else
{
    Run %windir%\system32\mspaint.exe
    WinWait Untitled - Paint
    WinActivate
}
Return

;**** END APPLICATION LAUNCHERS

;_______________________________________________________STRING MACROS____________________________________________________________________

;~~~~~~~~~~~~~~~~~~Bottom Row~~~~~~~~~~~~~


;******Phone Numbers

#p::send 678-471-9563

;******** END STRING MACROS

;_______________________________________________________Date Send____________________________________________________________________

#F2::
FormatTime, TimeString, %A_NOW%, MM/dd/yyyy
Send, %TimeString%
return

;***** END DATE SENDER



;__________________________________________________________Auto Google____________________________________________________________
SendMode Input 
RegRead, OutputVar, HKEY_CLASSES_ROOT, http\shell\open\command 
StringReplace, OutputVar, OutputVar," 
SplitPath, OutputVar,,OutDir,,OutNameNoExt, OutDrive 
browser=%OutDir%\%OutNameNoExt%.exe 

^g:: 
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
      GoSub, GoogleSearch 
   } 
   clipboard = %prevClipboard% 
   return 
} 

GoogleSearch: 
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
         Run, %browser% http://www.google.com/search?hl=en&q=%searchQuery% 
      else 
         Run, %browser% %searchQuery% 
   } 
   else 
      Run, %browser% http://www.google.com/search?hl=en&q=%searchQuery% 
return

;**** END AUTO GOOGLE

;_______________________________________________________Desktop Manager____________________________________________________________________

#SingleInstance Force
DetectHiddenWindows, Off

ResList=
WinPosArray0=0
return




#d::
IfNotInString, ResList, |Desktop|
	{
	; Show Desktop
	StoreAllWindowsInOrder("Desktop")
	WinMinimizeAll
	}
Else
	{
	; Restore Previous Windows
	StoreAllWindowsInOrder("DesktopUpdate")
	WinMinimizeAllUndo	
	RestoreAllWindowsInOrder("Desktop")
	RestoreAllWindowsInOrder("DesktopUpdate")
	}
return



StoreAllWindowsInOrder(Resolution)
{
	Global

	local WinIDlist
	local WinPosList
	local WinOrder
	local thisID
	local IsMaximized
	local OnTopStyle

	
	SetBatchLines -1  ; Makes searching occur at maximum speed. 
	SetWinDelay, 0	  ; No movement or resize is done, so this should not cause any issues
	Critical
	
	WinIDlist=
	WinPosList=
	WinOrder=1
	
	; Get all visible Windows
	WinGet, WinIDlist, list, ,, Program Manager
	Loop, %WinIDlist%
	{
		thisID := WinIDlist%A_Index%
		
		; Don't store the ID's of already minimized Windows
		WinGet, IsMaximized, MinMax, ahk_id %thisID%
		If IsMaximized=-1
			continue
		
		WinGet, OnTopStyle, ExStyle, ahk_id %thisID%
		OnTopStyle&=0x8  ; 0x8 is WS_EX_TOPMOST.

		WinPosList=%WinPosList%%WinOrder%%A_TAB%%thisID%%A_TAB%%OnTopStyle%`n
		WinOrder+=1
	}
	
	WinPosArray%Resolution%:=WinPosList
	ResList=%ResList%|%Resolution%|
	
	; SetWinDelay is back to normal when returning from this function
	; SetBatchLines is back to normal when returning from this function
	; Critical is Off when returning from this function
}



RestoreAllWindowsInOrder(Resolution)
{
	Global

	local WinPosList
	local Field0					
	local Field1			;Field1=WinOrder		
	local Field2			;Field2=thisID		
	local Field4			;Field3=OnTopStyle		
	
	IfNotInString, ResList, |%Resolution%|
		return

	
	SetBatchLines -1  ; Makes searching occur at maximum speed. 
	SetWinDelay, 0	  ; No movement or resize is done so this should not cause any issues
	Critical

	; WinPosArray is sorted from Top to Bottom so we need to reverse that order
	Sort, WinPosArray%Resolution%, N R
	WinPosList:=WinPosArray%Resolution%
	Loop, parse, WinPosList, `n, `r
	{
	StringSplit, Field, A_LoopField, %A_TAB%
	
	; It turned out that using SetWindowPos with the "HWND_NOTOPMOST" Option is causing the least side effects. 
	; Going the other way and setting the Windows to the Bottom of the stack did result in unwanted behavior of the windows:
	; After restoring the z-Order, you could no longer bring a Window in front of another by just clicking somewhere inside 
	; that window. It was necessary to click on the Window Title bar to bring it in front of other windows.
	; It also works more reliable than DllCall("SetForegroundWindow", "UInt", hWnd)
	
	; http://msdn.microsoft.com/en-us/library/ms633545(v=vs.85).aspx?ppud=4
	; Places the window above all non-topmost windows (that is, behind all topmost windows). This flag has no effect if the window is already a non-topmost window.
	DllCall("SetWindowPos", "uint", Field2, "uint", "-2" , "int", "0", "int", "0", "int", "0", "int", "0"  , "uint", "19") ; 19 = NOSIZE | NOMOVE | NOACTIVATE ( 0x1 | 0x2 | 0x10 )

	; Restore the AlwaysOnTop setting
	If Field3 	; On TopSyle = AlwaysOnTop
		WinSet, AlwaysOnTop, On, ahk_id %Field2%
	
	; Opera did always end up in front of other windows, even so those were originaly above Opera and restored correctly until Opera did rise in front of them.
	; Regardless if SetWindowPos did activate the Window or not. But a WinActivate following SetWindowPos did solve that issue. 
	; Since the IDs of Windows that are originally minimized are not in the List, every Window can be activated
	WinActivate, ahk_id %Field2%
	}
	; SetWinDelay is back to normal when returning from this function
	; SetBatchLines is back to normal when returning from this function
	; Critical is Off when returning from this function
	
	; Clear the now unused global variables
	WinPosArray%Resolution%=
	; Rearm the Toggle function
	StringReplace, ResList, ResList, |%Resolution%|
}

;**** End Desktop Manager






;______________________________________________________________Markup Helper_______________________________-----

;#Hotstring r EndChars `n


:o:cj::<>{Left}
:o:ksg::</>{Left}


/*
:oc:ul::<ul>{Enter}{Enter}</ul>{Up}
:oc:ol::<ol>{Enter}{Enter}</ol>{Up}
:oc:li::<li></li>{Left}{Left}{Left}{Left}{Left}
:oc:co::<code></code>{Left}{Left}{Left}{Left}{Left}{Left}{Left}
:oc:p::<p></p>{Left}{Left}{Left}{Left}

;bk
:oc:vn::<blockquote>^v</blockquote>
:oc:img::<img src="^v">
:oc:str::<strong></strong>{Left}{Left}{Left}{Left}{Left}{Left}{Left}{Left}{Left}
:oc:em::<em></em>{Left}{Left}{Left}{Left}{Left}
:oc:h1::<h1></h1>{Left}{Left}{Left}{Left}{Left}
:oc:h2::<h2></h2>{Left}{Left}{Left}{Left}{Left}
:oc:h3::<h3></h3>{Left}{Left}{Left}{Left}{Left}
:oc:h4::<h4></h4>{Left}{Left}{Left}{Left}{Left}
:oc:html::<html>{Enter}{Enter}</html>{Up}
:oc:head::<head>{Enter}{Enter}</head>{Up}
:oc:body::<body>{Enter}{Enter}</body>{Up}

:oc:br::<br />
:oc:mail::<a href="mailto:^v"></a>{Left}{Left}{Left}{Left}
:oc:div::<div></div>{Left}{Left}{Left}{Left}{Left}{Left}
:oc:cmt::<{!}--  -->{Left}{Left}{Left}{Left}
:oc:hr::<hr>

; tables
:oc:tab::<table>{Enter}{Enter}</table>{Up}
:oc:tr::<tr>{Enter}{Enter}</tr>{Up}
:oc:td::<td></td>{Left}{Left}{Left}{Left}{Left}

:oc:skel::<html>{Enter}<head>{Enter}<title></title>{Enter}</head>{Enter}<body>{Enter}{Enter}</body>{Enter}</html>

*/
;*************END MARKUP HELPER







/*




													   #####gy_,                    y#######g   __g########g
													  g#F   `M##bg.                g#"'    ###g####~'    9##L
													 ##F       `###g____yyyyy_____j#"        ###          ##E
													a#F           3##"#~~~~~~~#####"          ##g          ##
												   j#F                           5#      ____ _##y__       ##1
												   a#                           y##    _g##~####"#M##g     ##1
												   #E                           J#L    ##  g#"'     `#########g_
												  o#1                           ##     ## y#E         ##L     9#,
												   #g                           ##      ####F         3#g      ##
												  a#F                           3#L       ##L         ##M#.    ##!
												 g#F                             ##_     _##g       _g#F #g   y##
												_#F                               ~###g###~M##g_   y###yg#'  y##'
												##                                           `?"M###        g##F
											   ##'                                                ?#,      ###L
											   #E                                                  ##g___g#"###
											  J#F                                                    `M##'   ##L
											  ##                                                              ##
											  ##                                                              ##
											  ##                                                              ##L
										   ___##y_.      a#o                                                __##1
										##""F~5#F        ###L                                 __          #M#M###M##
											  J#K        ###L                                g##g             ##
											 _y##ga       ~           _amog                  ####            ##F
										 a###~'"#1                   d#   "#                 "##          #wy##L.
												3#,                   #g__g"                                ##""5##g
												 ##g#                    ''                                a##    '~
											__y#"FH#_                                                  y_ g##
										   ##"'     ##g                                                 "###g_
										   ~         `9#g_                                            _g##'"9##gg,
														 ?##gy_.                                   _y##"'      `##
															 ~"####ggy_____                  ___g###F'
																	 "~~~~~##################~~~"
*/

																	 
																	 
;____________________________________________________________________END OF COMMON SCRIPT_______________________________________________




