;System.out.println("");WARNING (MENUS) ARE IN DEVHELPER.AHK SINCE THIS IS IMPORTED (AND) THEMENUS WILL BE LOST IF KEPT HERE.

!u::
   OldClipboard := Clipboard
   Clipboard := ""

   sleep, 10

   Menu, boilerplate, Show
   sleep 100
   Send ^{vk56}        ; instead of Send ^v
   sleep 100
Clipboard := OldClipboard
return



insert:
SetKeyDelay, 20

;---------------------JAVA------------------

    IF (A_ThisMenuItem = "&printline")
              Clipboard := "System.out.println(`"""
    ELSE IF (A_ThisMenuItem = "&main")
              Clipboard := "public static void main(String[] args)"
    ELSE IF (A_ThisMenuItem = "&forloop")
    {
        send for (int i 6 0; i < {;} i{NumpadAdd}{NumpadAdd})
         sleep 50
         send {Left}{Left}{Left}{Left}{Left}{Left}       
   }


;---------------------JAVASCRIPT------------------

 
    ELSE IF (A_ThisMenuItem = "&document.getElementById")
              Clipboard := "document.getElementById(`"""




;----------------------HTML---------------


    ELSE IF (A_ThisMenuItem = "Anchor Tag(&h)")
    {
         Clipboard := "<a href=`"""`"></a>"
     
   }


    ELSE IF (A_ThisMenuItem = "&Comment Tag")
    {
         Clipboard := "<!-- -->"
     
   }



;----------------------C#---------------


    ELSE IF (A_ThisMenuItem = "Print(&h)")
    {
         Clipboard := "Console.WriteLine(`"""
     
   }


    ELSE IF (A_ThisMenuItem = "&ReadKey")
    {
         Clipboard := "Console.ReadKey();"
     
   }

;   ELSE (MsgBox, "Insert FAIL")
Return

;   TEST HERE
/*



document.getElementByID("

System.out.println("


yy</>
System.out.println("");<public static void main(String[] args)for (int i = 0; i < ; i++)
System.out.println(");
System.out.println("");
<eoeie/></</>

System.out.println(");<<<<<</><</></></>>/<>/<>/<
System.out.println(" ");
    [b]<!--dum-->[/b]
  System.out.println(");
public static void main(String[] args)
for (int i = 0; i < ; i++)

    [b]<!--dum-->[/b]

<<a href=""></a>
  
[<!--b][i]    <TEST ME>[/i][/b]-->


[quote]/foo[/quote]

<a href=""></a>



*/