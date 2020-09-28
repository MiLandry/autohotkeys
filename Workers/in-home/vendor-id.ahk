#include FunctionLib.ahk

Sleep, 500

; Send, {Tab}
; Sleep, 500
; Send, {Tab}
; Sleep, 500
; Send, {Tab}
; Sleep, 500
; Send, {Tab}
; Sleep, 500

CoordMode, Mouse, Screen
Click, 575, 335
Sleep, 200

; providerName
fillTextField("mikecare")

; county
pickDropDown()
; radio
Send, {Tab}
Sleep, 500
Send, {Tab}
Sleep, 500

; taxid
fillTextField("111222333")

; directorname
fillTextField("111222333")
; dphone
fillTextField("111222333")
; dext
fillTextField("111222333")
; dcell
fillTextField("111222333")
; cirectorname
fillTextField("111222333")
; cphone
fillTextField("111222333")
; cext
fillTextField("111222333")
; ccell
fillTextField("111222333")
; cemail
fillTextField("fakeemail@deloitte.com")
; mstreet
fillTextField("111222333")
; mcity
fillTextField("111222333")
; mstate
pickDropDown()
; mzip
fillTextField("12345")






; ; type
; Sleep,1000
; CoordMode, Mouse, Screen
; Click, 960, 380
; Sleep, 1000
; Send, {Tab}
; Sleep, 200
; Send, {Enter}

; ; amount
; Sleep,1000
; CoordMode, Mouse, Screen
; Click, 960, 450
; Sleep, 200
; Send, {1}
; Sleep, 200
; Send, {Tab}

; ; date
; Sleep,1000

; Send, {Enter}
; Sleep,1000
; Send, {Enter}

; ; submit
; Sleep,1000
; CoordMode, Mouse, Screen
; Click, 960, 580




ExitApp