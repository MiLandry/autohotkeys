;home page

;Firstname
Sleep,1000
CoordMode, Mouse, Screen
Click, 950, 500
Sleep, 200 ;click form auto
Click, 950, 540

;DOB
Sleep,1000
CoordMode, Mouse, Screen
Click, 950, 780
Sleep, 1000
Send, {Enter}


;gender
Sleep,1000
CoordMode, Mouse, Screen
Click, 950, 930
Sleep, 1000
Send, {Tab}
Sleep, 200
Send, {Enter}


;USCitizen
Sleep,1000
CoordMode, Mouse, Screen
Click, 950, 965
Sleep, 1000
Send, {Tab}
Sleep, 200
Send, {Enter}

;Submit
Sleep,1000
Send, {PgDn}
Sleep, 200
CoordMode, Mouse, Screen
Click, 950, 905
return




ExitApp