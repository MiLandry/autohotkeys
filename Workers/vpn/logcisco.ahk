#include FunctionLib.ahk

InputBox, UserInput, RSA Token, Enter the 8 digit token and have plenty of time., , 640, 480
if ErrorLevel
  MsgBox, CANCEL was pressed.
else
  bringUpApp("AnyConnect", "C:\Program Files (x86)\Cisco\Cisco AnyConnect Secure Mobility Client\vpnui.exe")
  Sleep, 2000
  Send, {Enter}
  Sleep, 5000
  send ysayius1
  Sleep, 1000
  Send, %UserInput%




ExitApp