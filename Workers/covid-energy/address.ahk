


; str 1
Sleep,1000
CoordMode, Mouse, Screen
Click, 960, 360
Sleep,1000
CoordMode, Mouse, Screen
Click, 950, 400 ;autocomplete

;state
Sleep, 500
Send, {Tab}
Sleep, 500
Send, {Tab}
Sleep, 500
Send, {Tab}
Sleep, 500
Send, {Enter}
Sleep, 500
Send, {Tab}
Sleep, 500
Send, {Enter}
Sleep, 1000

;submit
CoordMode, Mouse, Screen
Click, 960, 815


ExitApp