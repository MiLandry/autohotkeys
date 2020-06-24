
#include C:\Users\miclandry\source\autohotkeys-master\Properties.ahk
;use below line to add functions to script



;----------------------- Property stuff


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



