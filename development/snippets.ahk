#include C:\Users\miclandry\source\autohotkeys-master\FunctionLib.ahk



; If you are swapping "Grabbers" change the "Xgrabber()" method in function lib.
; if you are trying to change shortcut keys, change this and change dev helper


;System.out.println("");WARNING (MENUS) ARE IN DEVHELPER.AHK SINCE THIS IS IMPORTED (AND) THEMENUS WILL BE LOST IF KEPT HERE.

!u::
   OldClipboard := Clipboard
   Clipboard := ""

   sleep, 10

   Menu, snippets, Show
   sleep 100
   Send ^{vk56}        ; instead of Send ^v
   sleep 100
Clipboard := OldClipboard
return



insert:
SetKeyDelay, 20

    IF (A_ThisMenuItem = "forbarbaz")
              Clipboard := "foobarbaz"


;---------------------Grab Bag------------------

    ELSE IF (A_ThisMenuItem = "YGrabber(&y)")
		sendYGrabber()

    ELSE IF (A_ThisMenuItem = "LGrabber(&L)")
		sendLGrabber()



;---------------------Google------------------

    ELSE IF (A_ThisMenuItem = "hangouts(&G)")
		send https://hangouts.google.com/call/ianpzsjapq64da4pn7qqv2q34ua
;https://plus.google.com/hangouts/_/event/cr7r4j4jg2p270qootb3je5uke8?hl=en&authuser=0



;---------------------JAVA------------------

    ELSE IF (A_ThisMenuItem = "&printline")
              Clipboard := "System.out.println(`"""
    ELSE IF (A_ThisMenuItem = "&main")
              Clipboard := "public static void main(String[] args)"
    ELSE IF (A_ThisMenuItem = "&forloop")
    {
        send for (int i 6 0; i < {;} i{NumpadAdd}{NumpadAdd})
         sleep 50
         send {Left}{Left}{Left}{Left}{Left}{Left}       
   }
 ELSE IF (A_ThisMenuItem = "&o_silly_password")
    {
        send hIeitl$hliht234i     
   }

 ELSE IF (A_ThisMenuItem = "&null_checker")
    {
        send if((SSS {!}6 null) && (SSS.length() > 0))
   }

 ELSE IF (A_ThisMenuItem = "java&docs")
    {
        send /** im_a_doc @param @return*/
   }

 ELSE IF (A_ThisMenuItem = "&comments")
    {
        send /* */
   }

 ELSE IF (A_ThisMenuItem = "&enhanced_forloop")
    {

       send for (myElementObjectType e : myCollectionObject)
   }







;---------------------JAVASCRIPT------------------

 
    ELSE IF (A_ThisMenuItem = "document.getElementBy&Id")
              Clipboard := "document.getElementById(`"""
    ELSE IF (A_ThisMenuItem = "document.getElementByName")
              Clipboard := "document.getElementsByName(`"""
    ELSE IF (A_ThisMenuItem = "&alert()")
              Clipboard := "alert(`"""


    ELSE IF (A_ThisMenuItem = "j&Query")
              send {$}("{#}myId").foo()


    ELSE IF (A_ThisMenuItem = "console.log&s")
              send console.log("");{left}{left}{left}

    ELSE IF (A_ThisMenuItem = "JSO&N.stringify")
              send JSON.stringify();{left}{left}




;---------------------JQuery----------------


    ELSE IF (A_ThisMenuItem = "selector&Id")
              send $(`"{#}`").{left}{left}{left}

    ELSE IF (A_ThisMenuItem = "selector&class")
              send $(`"{.}`").{left}{left}{left}









;----------------------HTML---------------


    ELSE IF (A_ThisMenuItem = "Anchor Tag(&h)")
    {
         Clipboard := "<a href=`"""`">CLICK ME</a>"
     
   }


    ELSE IF (A_ThisMenuItem = "&Comment Tag")
    {
     ;    Clipboard := "<!-- -->"
        send <{!}--  -->{Left}{Left}{Left}{Left}
     
   }
   ELSE IF (A_ThisMenuItem = "&Label")
    {
         Clipboard := "<label></label>"
     
   }
ELSE IF (A_ThisMenuItem = "&1 Scriplet Tag")
    {
         Clipboard := "<% %>"
     
   }
ELSE IF (A_ThisMenuItem = "&2 Expression Tag")
    {
         Clipboard := "<%= %>"
     
   }
ELSE IF (A_ThisMenuItem = "&3 Declaration Tag")
    {
         Clipboard := "<%! %>"
     
   }
ELSE IF (A_ThisMenuItem = "&4 Include directive")
    {
         Clipboard := "<%@ include file=""relative url"" >"
     
   }

ELSE IF (A_ThisMenuItem = "&div")
    {
         ;Clipboard := "<div></div>"
send <div></div>{Left}{Left}{Left}{Left}{Left}{Left}
     
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


;----------------------css---------------

    ELSE IF (A_ThisMenuItem = "&pure_div")
    {
         Clipboard := "<div class=""pure-control-group"">"
     
   }

ELSE IF (A_ThisMenuItem = "&div_cont")
    {
         Clipboard := "<div class=""cont"">"
     
   }

ELSE IF (A_ThisMenuItem = "&background-color")
    {
         Clipboard := "background-color"
     
   }

;----------------------SQL---------------

    ELSE IF (A_ThisMenuItem = "&varchar45")
    {
         Clipboard := "VARCHAR(45)"
     
   }






;----------------End of Submenus--------------

;   ELSE (MsgBox, "Insert FAIL")
Return



;--------------------------------------------------
;---------------------End of function--------------------
;--------------------------------------------------





;   TEST HERE
/*







VARCHAR(45)


if((SSS \ null) && (SSS.length() > 0))




if((SSS !# null) && (SSS.length() > 0))


for (myElementObjectType e : myCollectionObject)

/* 


$(""#myId"").feoo
{Left}
*/

/** im_a_doc @param @return*/


System.out.println("


$("#myId").foo()eeeee


<a href=""></a>
$(""


<div></div>


<div></div> 

<div></div>


console.log("


console.log('"


if(serConfigModule.isInRole("""Administrator"""))


if(serConfigModule.isInRole("""Administrator""")){
myBTN.hide();
}


<!-- santoehi -->

<-  -->


*/








