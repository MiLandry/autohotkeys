#include Properties.ahk
#include AccV2.ahk



;----------------------- Property stuff and spitter stuff


;--email
sendPrimaryEmail()
{
    ;msgbox "sending primary email for this computer.
    if (isWorkComputer())
    {
    ;msgbox this is work computer
    var := getWorkEmail()
    send %var%
    }
    else
    {
    ;msgbox this is personal computer
    var := getPersonalEmail()
    send %var%
    }
    return
}


sendSecondaryEmail()
{
    if (isWorkComputer())
    {
    var := getPersonalEmail()
    send %var%
    }
    else
    {
    var := getWorkEmail()
    send %var%
    }
    return
}

;--username

sendPrimaryUsername()
{
    if (isWorkComputer())
    {
        var := getWorkUsername()
        send %var%
    }
    else
    {
        var := getPersonalUsername()
        send %var%
    }

    return
}

sendSecondaryUsername()
{
    ; msgbox, sendsecont
    if (isWorkComputer())
    {
        var := getPersonalUsername()
        send %var%
    }
    else
    {
        var := getWorkUsername()
        send %var%
    }
    return
}




; my password generations will live in the c and v buttons. using shift will change from work to home and vice versa

sendPersonalPasswordCharlie()
{
    var := getPersonalPasswordCharlie()
    send %var%
}


sendPersonalPasswordVictor()
{
    var := getPersonalPasswordVictor()
    send %var%
}

sendWorkPasswordCharlie()
{
    var := getWorkPasswordCharlie()
    send %var%
}


sendWorkPasswordVictor()
{
    var := getWorkPasswordVictor()
    send %var%
}


sendDefaultPasswordCharlie()
{
    if (isWorkComputer())
    {
        sendWorkPasswordCharlie()
    }
    else
    {
        sendPersonalPasswordCharlie()
    }
}

sendAlternativePasswordCharlie()
{
    if (isWorkComputer())
    {
        sendPersonalPasswordCharlie()
    }
    else
    {
        sendWorkPasswordCharlie()
    }
}


sendDefaultPasswordVictor()
{
    if (isWorkComputer())
    {
        sendPersonalPasswordVictor()
    }
    else
    {
        sendPersonalPasswordVictor()
    }
}

sendAlternativePasswordVictor()
{
    if (isWorkComputer())
    {
        sendPersonalPasswordVictor()
    }
    else
    {
        sendWorkPasswordVictor()
    }
}





; End of property stuff



; by the way, you cant use clipboard in functions, use a key remap instead
sendYGrabber()
{
send docker ps

}

sendLGrabber()
{
send docker kill
return
}

;------------------Helpers

; the default 'switch to this app, or open it if its not. For the second arg, find the 'shortcut' properties, and use its target as the arg with qquotes'
bringUpApp( appName, appLocation)
{
    ;msgbox %appName%
    SetTitleMatchMode 2
    IfWinExist, %appName%
    {
        ;msgbox %appName%
        WinActivate %appName%
        WinMaximize %appName%
    }
    else
    {
        ;msgbox %appLocation%
        run %appLocation%
        WinWait -
        WinActivate
        WinMaximize
    }
    return

}

openWorkEmail()
{

    bringUpApp("Outlook", "Outlook.exe")
}

isWorkComputer()
{
var := getWorkComputerName()
if (A_ComputerName = var) {
;msgbox yes
return true
}
;msgbox no
return false
}

close_script(script)
{
    settitlematchmode 2
    DetectHiddenWindows, On
    myscript = %script%
    IfWinExist, %myscript%
        {
        WinClose, %myscript%
        }
}


Copy()
{
    Send ^{vk43} ;send ctrl c
    return
}

Paste()
{
Send ^{vk56}        ; instead of Send ^v
return
}

Cut()
{
    Send ^{vk58}   ; instead of ctrl x
}

Save()
{
    Send ^{vk53}    ; instead of ctrl s
    MsgBox program saved
    return
}


AltTab()
{
Send, !{Esc}
return
}

SelectAll()
{
Send, ^{vk41}    ; instead of ctrl a
return
}


openGmail()
{
SetTitleMatchMode 2
IfWinExist - Gmail
{
    WinActivate
    WinMaximize
}
else
{
    run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --app=https://mail.google.com/mail;Application Launcher 2.0
    WinWait - Gmail
    WinActivate
    WinMaximize
}
return
}


; openEmail()
; {
; if (isWorkComputer())
; {
; openWorkEmail()
; }
; else
; {
; ;msgbox is home email
; openGmail()
; }
; return
; }


; openAlternativeEmail()
; {
; ;MsgBoX open alt email
; if (isWorkComputer())
; {
; openGmail()

; }
; else
; {
; openWorkEmail()
; }
; return
; }

openOneNote()
{
    SetTitleMatchMode 2
    IfWinExist OneNote
    {
        WinActivate
    }
    ; else
    ; {

    ; if (isWorkComputer() || A_ComputerName = "laptophamster")
    ; {
    ; var = C:\Program Files\Microsoft Office\Office16\ONENOTE.EXE
    ; run %var%
    ; }

    ; else
    ; {
    ; var = C:\Program Files\Microsoft Office 15\root\office15\ONENOTE.EXE
    ; run %var%
    ; }


    ;     WinWait OneNote
    ;     WinActivate
    ; }
    return
}

openPowerShell()
{
    if (isWorkComputer())
    {
      Run C:\Users\miclandry\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell
      return
    }
    else
    {
        Run C:\Users\Mike\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell ISE
        return
    }
}


openGoogleDrive()
{
bringUpApp("Google Drive", "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe  --app=https://drive.google.com/drive/#my-drive")
}


openDownloadsFolder()
{
if (A_ComputerName = getWorkComputerName())
{
run C:\Users\miclandry\Downloads

}
else
{
run Z:\Downloads

}
return
}

openEclipse()
{
SetTitleMatchMode 2
IfWinExist Eclipse
{
    WinActivate
}
else
{
return
}
return
}



openInternetExplorer()
{
SetTitleMatchMode 2
IfWinExist Internet Explorer
{
    WinActivate
    WinMaximize
}
else
run C:\Program Files\Internet Explorer\iexplore.exe
return
}




;----------------------------------------------------------



openBugzilla()
{
SetTitleMatchMode 2
IfWinExist - Bugzilla
{
    WinActivate
    WinMaximize
}
else
{
    run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://bugz.osi-atl.net
;    WinWait -
;    WinActivate
;    WinMaximize
}

return
}






openGoogleMusic()
{
  msgbox "goog mus"
  run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe  --app=https://play.google.com/music/listen
  return
}

openSublime()
{
    bringUpApp("UNREGISTERED", "C:\Program Files\Sublime Text 3\sublime_text.exe")
    return
}

openGoogle()
{
    IfWinExist Google Chrome
{
    WinActivate
    MsgBox 'google chrome winactivated'
    WinMaximize
}
else
{
    Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
    WinWait Google Chrome
    MsgBox 'Chrome launched'
    WinActivate
    WinMaximize
}
return
}

openPaint()
{
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
}

openUdacity()
{Run "https://www.udacity.com/my_courses"
SetTitleMatchMode 2

WinWait Google Chrome
WinActivate Google Chrome
Return
}


openDropbox()
{
  IfWinExist Dropbox
{
    WinActivate
}


else
{
    run C:\Dropbox
    WinWait Dropbox
    WinActivate
}
Return
}


cycleKeyboards()
{
    If WinExist("PilotLight.ahk" . " ahk_class AutoHotkey")
      msgbox, ASDF;ASLDKFJA;S

    ; msgbox, in cycleKeyboards
    DetectHiddenWindows, On
    settitlematchmode 2

    IfWinExist, Dvorak.ahk
    {
        ; msgbox, 1
        WinClose, Keyboard\Dvorak.ahk
        run keyboard\Developer.ahk
        return
    }

    IfWinExist, Developer.ahk
    {
        ; msgbox, 2
        WinClose, Keyboard\Developer.ahk
        run Keyboard\Qwerty.ahk
        return
    }


    IfWinExist, Qwerty.ahk
    {
        ; msgbox, 3
        WinClose, Keyboard\Qwerty.ahk
        run Keyboard\Dvorak.ahk
        return
    }

    ; msgbox, default

    run Keyboard\Dvorak.ahk
    return
}



toggle_script(script)
{
DetectHiddenWindows, On
IfWinExist, %script%
    {

    WinClose, %script%
;    MsgBox "Closing %script%"
    }
else
{
    run %script%
;    MsgBox "Opening %script%"
}
Return
}


openGoogleTasks()
{
    bringUpApp("Keep", "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe  --app=https://keep.google.com/#homecanvas?pli=1")
    return
}

openGoogleCalendar()
{
    bringUpApp("Google Calendar", "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe  --app=https://www.google.com/calendar/render?tab=wc")
    return
}

getLaptopComputerName()
{
	return "DESKTOP-PNEL2RP"
}

openNewChromeTab(URL)
{
    Browser = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

    IfWinExist ahk_exe chrome.exe
    {
        WinGet, chromePID, PID, ahk_exe chrome.exe
        Run %Browser% "%URL%"
    }
    else
        Run %Browser% "%URL%",,, chromePID
    WinWait ahk_pid %chromePID%
    WinSet, Bottom,, ahk_pid %chromePID% ; send the window beneath all other windows
    return

}


; Activates tab in Google Chrome if it exists
; Returns true if exists, false if does not exist
;
; Leaves original tab activated if sought tab does not exist
; Known issue: will stop searching tabs if two tabs have same name
ActivateChromeTabByTitle(soughtTab)
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

    ; stdout := FileOpen("*", "w")
    ; val := "currentTab"
    ; MsgBox, % (val .= "`r`" + currentTab)
    ; stdout.WriteLine(val)


    foundTab := InStr(currentTab, soughtTab) > 0
  }
  Until (foundTab || currentTab == firstTab)

  return foundTab
}

ActivateChromeTabByURL(soughtTab)
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
    ; WinGetTitle, currentTab, A
    currentTab := Acc_Get("Object","4.1.2.2.2",0,"A").accValue(0)


    ; stdout := FileOpen("*", "w")
    ; val := "currentTab"
    ; MsgBox, % (val .= "`r`" + currentTab)
    ; stdout.WriteLine(val)



    foundTab := InStr(currentTab, soughtTab) > 0
  }
  Until (foundTab || currentTab == firstTab)

  return foundTab
}


SpitDateSlash()
{
    FormatTime, TimeString, %A_NOW%, MM/dd/yyyy
    Send, %TimeString%
    return
}

SpitDateHyphen()
{
    FormatTime, TimeString, %A_NOW%, MM-dd-yyyy
    Send, %TimeString%
    return
}

SpitDateBirth()
{
    Send, 06/24/86
    return
}

SpitDateTime()
{
    FormatTime, TimeString, %A_NOW%, ss/mm/hh/dd/MM/yyyy
    Send, %TimeString%
    return
}


thesaurus()
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
}


logIntoCMS()
{
    Run Workers\livacms.ahk
    return
}

GetUwpAppName() {
    WinGet name,ProcessName,A
    if(name="ApplicationFrameHost.exe") {
        ControlGet hWnd,Hwnd,,Windows.UI.Core.CoreWindow1,A
        if(hWnd)
            WinGet name,ProcessName,ahk_id %hWnd%
    }
    return name
}

GetURL() {
	if(WinActive("ahk_exe chrome.exe"))
		return Acc_Get("Object","4.1.2.2.2",0,"A").accValue(0)
	if(WinActive("ahk_exe firefox.exe"))
		return Acc_Get("Object","4.22.8.1",0,"A").accValue(0)
	if(WinActive("ahk_class IEFrame"))
		return Acc_Get("Object","4.3.4.1.4.3.4.2.2",0,"A").accValue(0)
	if(GetUwpAppName()="MicrosoftEdge.exe") {
		items:=Acc_Children(Acc_Get("Object","4.2.4",0,"A"))
		Loop % items.length()
			if(items[A_Index].accRole(0)=ACC_ROLE.TEXT)
				return items[A_Index].accValue(0)
	}
	ClipSaved:=ClipboardAll
	Clipboard=
	Sleep 100
	Send ^l^c ; Ctrl+l would also work in ALL four browsers from above. But nevertheless: this line is untested!
	ClipWait 0.1
	url:=Clipboard
	Clipboard:=ClipSaved
	ClipSaved=
	return url
}

AHKPanic(Kill=0, Pause=0, Suspend=0, SelfToo=0) {
DetectHiddenWindows, On
WinGet, IDList ,List, ahk_class AutoHotkey
Loop %IDList%
  {
  ID:=IDList%A_Index%
  WinGetTitle, ATitle, ahk_id %ID%
  IfNotInString, ATitle, %A_ScriptFullPath%
    {
    If Suspend
      PostMessage, 0x111, 65305,,, ahk_id %ID%  ; Suspend.
    If Pause
      PostMessage, 0x111, 65306,,, ahk_id %ID%  ; Pause.
    If Kill
      WinClose, ahk_id %ID% ;kill
    }
  }
If SelfToo
  {
  If Suspend
    Suspend, Toggle  ; Suspend.
  If Pause
    Pause, Toggle, 1  ; Pause.
  If Kill
    ExitApp
  }
}
