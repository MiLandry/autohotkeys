
Menu, Tray, Icon, C:\Users\miclandry\source\autohotkeys-master\icons\matrix.ico

;****** Initialization


; NB 
;the keyboard remapping is broken out from the shortcut keys since the entire script must be disabled when the modifier keys are suppressed.
; note the idiomatic technique whereby the script is disabled when certain keys are pressed in order to avoid chaining inputs.
; This program is launched by the "programmer loader.ahk" script


Loop {
   If  !GetKeyState("Control")
   and !GetKeyState("Alt") 
   and !GetKeyState("LWin") 
   and !GetKeyState("RWin") {
      Suspend, Off
   } else {
      Suspend, On
   }--------------------------------------
   Sleep, 50--------------------------------------------------------------------------------------------------------------------
}

~RWin::Suspend, On
~RWin UP::Suspend, Off
~LWin::Suspend, On
~LWin UP::Suspend, Off
~Ctrl::Suspend, On
~Ctrl UP::Suspend, Off
~Alt::Suspend, On
~Alt UP::Suspend, Off




;                                            Number Row

`::$
shift & `::Send `%
1::&
Shift & 1::Send 1
2::[
Shift & 2::Send 2


;/*

3::{

;*/




/*



3::
{
if (GetKeyState(Shift[D]))
MsgBox "aeuaeouaoeu"
else
{
    Send {{}{Enter}{}}{Up}{Enter}
    Exit
}
exit
}


*/



Shift & 3::
{
Send {Numpad3}
exit
}




4::}
Shift & 4::Send 4

5::(
Shift & 5::Send 5


6::
Suspend, On
SendInput, *
Suspend, Off
Return
Shift & 6::
Suspend, On
SendInput, 6
Suspend, Off
Return


7::
Suspend, On
SendInput, =
Suspend, Off
Return
Shift & 7::Send 7

8::)
Shift & 8::Send 8

9::+
Shift & 9::Send 9

0::]
Shift & 0::Send 0

-::!
Shift & -::Send {@}



=::send {#}



Shift & =::Send ``


$Backspace:: send {Del}

;-------------------------------------------Top Row

q::p
w::r
e::c 
r::g 
t::k 
y::; 
u::y
i::l 
o::d 
p::, 
[::z 
]::^
Shift & [:: Send Z
Shift & ]:: Send ~
;\::\



;                                         Middle Row

Capslock:: send {BackSpace}

a::s
s::n 
d::t 
f::h 
g::f 
h::"
j::i
k::e 
l::o 
`;::a 
'::-

Shift & h::
send {'}
return


;                                            Bottom Row

z::j 
x::w
c::m
v::b
b::x 
n::v 
m::u
,::q
.::.
;/::


!j:: send <
return
!k:: send /
return
!l:: send >
return
!;:: send >
return
!':: send -
return