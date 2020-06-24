#include C:\Users\miclandry\source\autohotkeys-master\Program_selector.ahk
#include C:\Users\miclandry\source\autohotkeys-master\Properties.ahk
;use below line to add functions to script

; by the way, you cant use clipboard in functions, use a key remap instead
sendYGrabber()
{
send docker ps

}

/*
send grep -r 'map' *
throw new ApplicationException("Context", e);


*/


sendLGrabber()
{
send docker kill 
return
}



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
;msgbox work computer name is %var%
;msgbox THIS computer name is %A_ComputerName%
;msgbox does %A_ComputerName% equal %var% 
;if ("%A_ComputerName%" == "%var%")
if (A_ComputerName = var) {
;msgbox yes
return true
}
;msgbox no
return false
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

openOutlook()
{
SetTitleMatchMode 2
IfWinExist - Outlook
{
    WinActivate
    WinMaximize
}
else
{
    run D:\Program Files\Microsoft Office\Office15\OUTLOOK.EXE
    WinWait - Outlook
    WinActivate
    WinMaximize
}
return
}


openEmail()
{
if (isWorkComputer())
{
openWorkEmail()
}
else
{
;msgbox is home email
openGmail()
}
return
}


openAlternativeEmail()
{
;MsgBoX open alt email
if (isWorkComputer())
{
openGmail()

}
else
{
;openOutlook()
openWorkEmail()
}
return
}

openOneNote()
{
SetTitleMatchMode 2
IfWinExist OneNote
{
    WinActivate
}
else
{

if (isWorkComputer() || A_ComputerName = "laptophamster")
{
  var = C:\Program Files\Microsoft Office\Office16\ONENOTE.EXE
  run %var%
}

else
{
  var = C:\Program Files\Microsoft Office 15\root\office15\ONENOTE.EXE
  run %var%
}


    WinWait OneNote
    WinActivate
}
return
}

/*
openGoogleDrive()
{
SetTitleMatchMode 2
IfWinExist My Drive
{
    WinActivate
    WinMaximize
}
else
{
    run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe  --app=https://drive.google.com/drive/#my-drive
return
}
return
}
*/
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

openDeltek()
{
SetTitleMatchMode 2
IfWinExist - Deltek
{
    WinActivate
    WinMaximize
}
else
{
    run C:\Program Files (x86)\Internet Explorer\iexplore.exe https://tne.orgstrategies.com/DeltekTC/welcome.msv
;    WinWait - 
;    WinActivate
;    WinMaximize
}

return
}





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





sendPrimaryUsername()
{
if (isWorkComputer())
{
    var := getWorkUsername()
    send %var%
}
else
{
send hamsterofdark
}
return
}

sendSecondaryUsername()
{
if (isWorkComputer())
{
  send hamsterofdark
}
else
{
    var := getWorkUsername()
    send %var%
}
return
}







;windows plus V
sendDefaultPassword()
{
/*
while I have the ability to fetch the literal from properties, I have it hard coded here for performance and glitch reasons
If I decide to re orient so that personal and work dont align on c and v keys, then I will have to pull from properties
*/
if (isWorkComputer())
{
  send J@nus1.o.o
; sendPersonalPassword()
}
else
{
  send Heimd@ll1.o
}  
}

;windows plus c
sendAlternativePassword()
{
if (isWorkComputer())
{
    send Heimd@ll1.o
;    var := getWorkPassword()
;    send %var%
}
else
{
;    var := getWorkPassword()
;  send %var%
send hamsterofdark
}
}

sendDeveloperEmail()
{
send michaellandryjava@yahoo.com
}


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
DetectHiddenWindows, On
IfWinExist C:\Users\miclandry\source\autohotkeys-master\keyboard\Dvorak.ahk
;IfWinExist C:\Users\miclandry\source\autohotkeys-master\keyboard\RH.ahk
{
;msgbox '1'
    WinClose, C:\Users\miclandry\source\autohotkeys-master\keyboard\Dvorak.ahk
    run C:\Users\miclandry\source\autohotkeys-master\keyboard\RH.ahk
} Else IfWinExist C:\Users\miclandry\source\autohotkeys-master\keyboard\RH.ahk
{
;msgbox '2'
    WinClose, C:\Users\miclandry\source\autohotkeys-master\keyboard\RH.ahk
} Else
    {
;    msgbox '3'
        run C:\Users\miclandry\source\autohotkeys-master\keyboard\Dvorak.ahk
    }
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



