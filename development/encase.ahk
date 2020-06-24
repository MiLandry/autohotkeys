;System.out.println("");WARNING (MENUS) ARE IN DEVHELPER.AHK SINCE THIS IS IMPORTED (AND) THEMENUS WILL BE (LOST) IF KEPT HERE.

/*
HOW TO UPDATE
1.  add code to the encase function
2. Update dsc menu in devhelper.ahk

*/



!i::
   OldClipboard := Clipboard
   Clipboard := ""
   sleep, 10
   Send ^{vk43} ;send ctrl c
   sleep, 10
   if (Clipboard = "") {
     Clipboard := OldClipboard
     return
     }
   Menu, dsc, Show
   sleep 100
   Send ^{vk56}        ; instead of Send ^v 
   sleep 100
Clipboard := OldClipboard
return


encase:
   sleep 100
   IF (A_ThisMenuItem = "()")
      Clipboard := "(" . Clipboard . ")" 
   ELSE IF (A_ThisMenuItem = "{}")
      Clipboard := "{" . Clipboard . "}" 
   else IF (A_ThisMenuItem = "[]")
      Clipboard := "[" . Clipboard . "]" 
   else IF (A_ThisMenuItem = "<>")
      Clipboard := "<" . Clipboard . ">" 

;------------------------------------------  HTML TAGS ----------------------

   else IF (A_ThisMenuItem = "<h1></h1>")
   Clipboard := "<h1>" . Clipboard . "</h1>"
   else IF (A_ThisMenuItem = "<h2></h2>")
   Clipboard := "<h2>" . Clipboard . "</h2>"
   else IF (A_ThisMenuItem = "<i></i>")
      Clipboard := "<i>" . Clipboard . "</i>"
   else IF (A_ThisMenuItem = "<!-- &Comment -->")
      Clipboard := "<!--" . Clipboard . "-->"

   else IF (A_ThisMenuItem = "&div")
      Clipboard := "<div>" . Clipboard . "</div>"




;ELSE (MsgBox, "encase FAIL")
  
 

  
Return



;   TEST HERE
/*
  <h1>snthieoa</h1>
<h2>snthieoa</h2>
snthieoa
snthieoa
    <!--dum-->

<div>-aoeaeoiaeoi</div>

  
[<!--b][i]    <TEST ME>[/i][/b]-->

*/