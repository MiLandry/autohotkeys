#include FunctionLib.ahk

Sleep, 500



; providerName
fillTextField("mikecare")

; legalBusiness
fillTextField("mikecarellc")

; radio
Send, {Tab}
Sleep, 500
Send, {Tab}
Sleep, 500

; taxid
fillTextField("111222333")

; legalentitytype
pickDropDown()


; mstreet
fillTextField("ieoa")
; mcity
fillTextField("ieoa")
; mstate
pickDropDown()
; mzip
fillTextField("12345")

; ; tick op detail
; Send, {Tab}
; Sleep, 500




ExitApp