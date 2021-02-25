#include FunctionLib.ahk
Gestures:



;---------------------Mouse wheel--------------

; Wheel        Switch between tabs.
;Gesture_WheelUp = ^+{Tab}
;Gesture_WheelDown = ^{Tab}


return ; have to return the script to this point as these stubs
;have to be run on script startup. Has something to do with equals sign vs colon



;--------------------- The  "UP" library-------------------


;open C drive
Gesture_U:
{
send #e
return
}

;change keyboard
Gesture_U_D:
{
    cycleKeyboards()
    return
}


;open download folder
;snap to left monitor
Gesture_U_L:
{
    send #+{Right}
    return
}

;snap to right monitor

Gesture_U_R:
{
    send #+{Right}
    return
}



; Make 'M' for email
Gesture_U_R_D_U_R_D:
{
openEmail()
return
}

; Make 'M' with right tail for alt email
Gesture_U_R_D_U_R_D_R:
{
openAlternativeEmail()
return
}


;------------------------ The "DOWN" library--------------

; Down Right: Close active window - inherited from gestures default

;open interface menu
Gesture_D:
{
    run guis\downGesture.ahk
    return
}

; down left: close a browser tab
Gesture_D_L:
{
send ^w
return
}

;down Left down: send DELETE
Gesture_D_L_D:
{
;MsgBox delete down left
send {Delete}
return
}




;--- the Spitters
Gesture_D_U_L:
{
sendPrimaryEmail()
return
}

Gesture_D_U_D:
{
sendPrimaryUsername()
return
}

Gesture_D_U_R:
{
sendPersonalPasswordVictor()
return
}



;---------------------THe "LEFT" library-----------

; Left, Down, Left: Snap window to the left
Gesture_L_D_L:
{
    send #{Left}
    return
}

;downloads
Gesture_L_U:
{
openDownloadsFolder()
return
}


;---------------------THe "RIGHT" library-----------


; Right, Up, Left;  Sends enter, the idea being copy paste enter follows a pattern of a rotating C
Gesture_R_U_L:
{
send {Enter}
return
}

; Right, Down, Right: Snap window to the right
Gesture_R_D_R:
{
send #{Right}
return
}

; max
Gesture_R_U:
{
    send #{Up}
    return
}

;---------------------------The "Draw letters" libary------------------------



;---------------------------Email------------------------




;---------------------------Eclipse------------------------



; Make 'E' for Eclipse
Gesture_L_D_R_L_D_R:
{
openEclipse()
return
}


;---------------------alt tab---------------




;backwards C for alt tab
Gesture_R_D_L:
{
;MsgBox ALT TAB debug
AltTab()
return
}



;--------------------------------------------------
;---------------------Copying, cutting, pasting, ctrl commands select all--------------------
;--------------------------------------------------


;Make 'C' for copy
Gesture_L_D_R:
{
;MsgBoX debug Copy
Copy()
return
}


;Make 'a' for select all
Gesture_L_D_R_U_D:
{
SelectAll()
return
}



;Make 'C' with downtail for Cut
Gesture_L_D_R_D:
{
;MsgBox Cut
    Cut()
    return
}


;Make 'V' for Paste
Gesture_D_R_U:
{
;MsgBoX debug paste
    Paste()
    return
}



/*
 * Init for Additional Scripts
Additional
 */

SetWinDelay, 2  ; For EasyWindowDrag.ahk

; Windows which gestures are disabled in.  Search below for "#if" or "G_Blacklisted()".
GroupAdd, Blacklist, ahk_class VMPlayerFrame
GroupAdd, Blacklist, ahk_class SynergyDesk
GroupAdd, Blacklist, ahk_class TSSHELLWND
GroupAdd, Blacklist, ahk_class TaskSwitcherWnd  ; Aero Alt+Tab
GroupAdd, Blacklist, Sun VirtualBox ahk_class QWidget

; Use WinClose instead of !{F4} with these windows.
GroupAdd, WinCloseGroup, ahk_class ConsoleWindowClass
GroupAdd, WinCloseGroup, ahk_class AutoHotkey

/*
 * END OF INIT/CONFIG SECTION
 */
return
G_Blacklisted()
{
    MouseGetPos,,, MouseWinId
    return WinExist("ahk_group Blacklist ahk_id " MouseWinId)
}


; Make a G  Google query dialogue box
Gesture_L_D_R_U_L:
    {
    InputBox, UserInput, Google Query, You can haz question for Google? , , 320, 280
    if ErrorLevel
        return
    else
        Run, http://www.google.com/search?q=%UserInput%
    }
    return


; Up:           Launch My Computer (usually).


*XButton1::
    if m_WaitForRelease ; Holding gesture button.
    {
        m_ScrolledWheel := true
        m_ExitLoop := true
        Send {Media_Next}
        return
    }
    Send {Blind}{Alt Down}{Tab}
    MouseGetPos, x, y
    if (x > 0) ; Put it on the appropriate monitor, assumes only two monitors,
    {          ; where the secondary monitor is to the left of the primary.  use < if secondary is to right, use > if to left
        WinWait, ahk_class TaskSwitcherWnd,, 0.2
        if !ErrorLevel
        {
            SysGet, Mon2, MonitorWorkArea, 1
            WinGetPos, x, y, w, h
            x := Mon2Left+(Mon2Right-Mon2Left-w)//2
            y := Mon2Top+(Mon2Bottom-Mon2Top-h)//2
            WinMove, x, y
            ifWinExist, ahk_class TaskSwitcherOverlayWnd
                WinMove, x, y
        }
    }
    KeyWait, XButton1
    Send {Blind}{Alt Up}
*XButton1 Up::
    return

XButton2&WheelUp:  ;mouse button 4
    if WinActive("ahk_class SciTEWindow")
        Send ^{PgUp}
    else if WinActive("ahk_class ShImgVw:CPreviewWnd")
        Send {Left}
    else
        Send ^+{tab}
return

XButton2&WheelDown:
    if WinActive("ahk_class SciTEWindow")
        Send ^{PgDn}
    else if WinActive("ahk_class ShImgVw:CPreviewWnd")
        Send {Right}
    else
        Send ^{tab}
return

XButton2&LButton:
    if WinActive("XP - Microsoft Virtual PC 2007")
        Send {Alt Down} n{Alt Up}
    else
        G_MinimizeActiveWindow()
return

XButton2&RButton:
{
Send ^{F4}
return
}






; Implement XButton2 as a prefix key while also allowing the
; duration of the press to decide its final (default) effect.
XButton2::  ;Mousebutton 4
    if m_WaitForRelease ; Holding gesture button.
    {
        m_ScrolledWheel := true
        m_ExitLoop := true
        KeyWait, XButton2
        Send {Media_Prev}
        return
    }
    Hotkey, WheelUp,   XButton2&WheelUp,   On
    Hotkey, WheelDown, XButton2&WheelDown, On
    Hotkey, LButton,   XButton2&LButton,   On
    Hotkey, RButton,   XButton2&RButton,   On

    XButton2_tick := A_TickCount

    KeyWait, XButton2

    if (A_ThisHotkey = "XButton2") {
        short_press := (A_TickCount - XButton2_tick) < 200
        if short_press
            Send ^{Tab}
        else
            Send ^+{Tab}
    } ; else: some other hotkey has fired

    Hotkey, WheelUp,   Off
    Hotkey, WheelDown, Off
    Hotkey, LButton,   Off
    Hotkey, RButton,   Off

    ; Reapply gesture keys in case they overlap with the above.
    Hotkey, %m_GestureKey%, GestureKey_Down, On
    if m_GestureKey2
        Hotkey, %m_GestureKey2%, GestureKey_Down, On
return

