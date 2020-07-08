#include FunctionLib.ahk


;*****emails

#z::
{
sendPrimaryEmail()
return
}

#+z::
{
sendSecondaryEmail()
return
}


;*******Usernames

#x::
{
  ; MsgBox, a
  sendPrimaryUsername()
  return

}



#+x::
{
  ; MsgBox, b
  sendSecondaryUsername()
  return
}


;********Passwords

#c::
{
  sendDefaultPasswordCharlie()
  return
}

#+c::
{
  sendAlternativePasswordCharlie()
  return
}

#v::
{
  sendDefaultPasswordVictor()
  return
}

#+v::
{
  sendAlternativePasswordVictor()
  return
}


#m:: 
{
openGoogleMusic()
return
}

;******Phone Numbers

#p::send 678-471-9563




;********* these need to live here and run ALL the time; the keyboard scripts pause for any modification
#j::<
#k::Send /
#l::>

; #n::
; Run Notepad
; return