;NB, you have to terminate the hotstring with enter or return or period.
;PPS, you have to pretend you are using qwerty
;currently i will rely on the accent ` as a suffix to indicate that the typed script will expand. its also the escape char so will have to type 2 in code.
; ok, something very mysterious, typing hyphen triggers hotstrings, its like a special meta character, its not needed in the :: ::
#include FunctionLib.ahk

; not using endchars, hotstrings will autotrigger
;#Hotstring EndChars -()[]{}:;'"/\,.?!`n `t





;----------git stuff



;gco
::rel::git checkout

;gcm
::rec::git commit -a -m


;---------- date stuff

;d-
:*:o'::
SpitDateSlash()
return

;dh-
:*:of'::
SpitDateHyphen()
return

;db-
:*:ov'::
{
    SpitDateBirth()
    return
}


;---------- vpn stuff

;v-
:*:n'::
{
    send ysayius1
    return
}


;automation, worker
;cms-
:*:eca'::
{
    logIntoCMS()
    return

}

;lorem-
:*:ilwkc'::
{
    send lorem ipsum
    SpitDateTime()
    return

}

