;click card
CoordMode, Mouse, Screen
Click, 950, 400
Sleep, 400
;click apply
CoordMode, Mouse, Screen
Click, 950, 700
Sleep, 2000

; pagedown
;;activate screen
CoordMode, Mouse, Screen
Click, 950, 320
Sleep, 400
Click, 950, 320
Sleep, 400
Send, {PgDn}
Sleep, 400
Send, {PgDn}
Sleep, 400
Send, {PgDn}
Sleep, 400
Click, 950, 950
Sleep, 2000

;click energy
CoordMode, Mouse, Screen
Click, 950, 820
Sleep, 400
;add energy
RunWait Workers\covid-energy\energy.ahk
Sleep, 2000

;click address
CoordMode, Mouse, Screen
Click, 950, 660
Sleep, 2000
;add address
RunWait Workers\covid-energy\address.ahk
Sleep, 2000

; click add member
CoordMode, Mouse, Screen
Click, 950, 500
Sleep, 2000
;add member
RunWait Workers\covid-energy\memberdetailnoincome.ahk
Sleep, 2000

; pagedown
;;activate screen
CoordMode, Mouse, Screen
Click, 950, 320
Sleep, 400
Send, {PgDn}
Sleep, 400




;submit
CoordMode, Mouse, Screen
Click, 950, 920
Sleep, 2000

;certify
; pagedown
;;activate screen
CoordMode, Mouse, Screen
Click, 950, 320
Sleep, 400
Click, 950, 320
Sleep, 400
Send, {PgDn}
Sleep, 400

;checkbox
CoordMode, Mouse, Screen
Click, 800, 885
Sleep, 400

;submit
CoordMode, Mouse, Screen
Click, 950, 930
Sleep, 400



return




ExitApp

