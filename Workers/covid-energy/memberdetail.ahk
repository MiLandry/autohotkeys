
;Firstname
CoordMode, Mouse, Screen
Click, 950, 500
Sleep, 400

;click autocomplete
CoordMode, Mouse, Screen
Click, 950, 545
Sleep, 400

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

;Page down
Sleep,1000
Send, {PgDn}

;income
Sleep,1000
CoordMode, Mouse, Screen
Click, 820, 590
Sleep, 200


;Submit
Sleep, 200
CoordMode, Mouse, Screen
Click, 950, 905
return




ExitApp