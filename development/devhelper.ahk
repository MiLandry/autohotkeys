Menu, tray, Icon, C:\Users\miclandry\source\autohotkeys-master\icons\devhelper.ico


#Persistent 
Menu, tray, add  ; Creates a separator line.
Menu, tray, add, edit encase.ahk, MenuHandler1
;Menu, tray, add, edit programmer loader.ahk, MenuHandler2 
Menu, tray, add, edit snippets, MenuHandler3 



;   COnsider putting in switches here to change from front end to back end


;--------------------------------------------------
;---------------------SNIPPETS--------------------
;--------------------------------------------------



;------------------------------------------------
;-----------snippets SubMenu Options---------------------
;------------------------------------------------


;----------Grab Bag submenu options------------------

Menu, grabBagSubmenu, Add, YGrabber(&y), insert
Menu, grabBagSubmenu, Add, LGrabber(&L), insert


;----------Google submenu options------------------

Menu, googleSubmenu, Add, hangouts(&G), insert

;----------Java submenu options------------------

Menu, javaSubmenu, Add, &printline, insert
Menu, javaSubmenu, Add, &main, insert
Menu, javaSubmenu, Add, &null_checker, insert
;Menu, javaSubmenu, Add, ; line break
Menu, javaSubmenu, Add, &forloop, insert
Menu, javaSubmenu, Add, &enhanced_forloop, insert
Menu, javaSubmenu, Add, &o_silly_password, insert
Menu, javaSubmenu, Add, java&docs, insert
Menu, javaSubmenu, Add, &comments, insert


;----------Javascript submenu options------------------


Menu, javascriptSubmenu, Add, console.log&s, insert
Menu, javascriptSubmenu, Add, document.getElementBy&Id, insert
Menu, javascriptSubmenu, Add, document.getElementByName, insert
Menu, javascriptSubmenu, Add, &alert(), insert
Menu, javascriptSubmenu, Add, j&Query, insert
Menu, javascriptSubmenu, Add, JSO&N.stringify, insert



;----------JQuery submenu options------------------


Menu, jquerySubmenu, Add, selector&Id, insert
Menu, jquerySubmenu, Add, selector&class, insert


;----------html submenu options------------------
Menu, htmlSubmenuSnippets, Add, Anchor Tag(&h), insert
Menu, htmlSubmenuSnippets, Add, &Comment Tag, insert
Menu, htmlSubmenuSnippets, Add, &Label, insert
Menu, htmlSubmenuSnippets, Add, &div, insert

;scrptlet tags
Menu, htmlSubmenuSnippets, Add, &1 Scriplet Tag, insert
Menu, htmlSubmenuSnippets, Add, &2 Expression Tag, insert
Menu, htmlSubmenuSnippets, Add, &3 Declaration Tag, insert
Menu, htmlSubmenuSnippets, Add, &4 Include directive, insert



;---------- C#  submenu options------------------
Menu, c#SubmenuSnippets, Add, Print(&h), insert
Menu, c#SubmenuSnippets, Add, &ReadKey, insert

;---------- css  submenu options------------------
Menu, css_submenuSnippets, Add, &pure_div, insert 
Menu, css_submenuSnippets, Add, &div_cont, insert
Menu, css_submenuSnippets, Add, &background-color, insert
 

;---------- SQL submenu options------------------
Menu, sql_submenuSnippets, Add, &varchar45, insert 





;----------------------Add new menus to snippets main menu----------------------------------

;Add GrabBag to snippets
Menu, snippets, Add, GrabBag (&y), :grabBagSubmenu

;Add Google to snippets
Menu, snippets, Add, Google(&g), :googleSubmenu

;Add Java to snippets
Menu, snippets, Add, Java (&i), :javaSubmenu

;Add Javascript to snippets
Menu, snippets, Add, Javascript (&s), :javascriptSubmenu

;Add c# to snippets
Menu, snippets, Add, &C#, :c#SubmenuSnippets

;Add css to snippets
Menu, snippets, Add,css&d, :css_submenuSnippets


;Add JQuery to snippets
Menu, snippets, Add, J&Query, :jquerySubmenu

;Add HTML to snippets
Menu, snippets, Add, HTML (&h), :htmlSubmenuSnippets

;Add SQL to snippets
;Menu, snippets, Add,S&QL, :sql_submenuSnippets







;--------------------------------------------------
;---------------------Encase Menu--------------------
;--------------------------------------------------

;--------------Brackets-------------------------
Menu, dsc, Add, (), encase
Menu, dsc, Add, {}, encase
Menu, dsc, Add, [], encase
Menu, dsc, Add, <>, encase
Menu, dsc, add  ; Creates a separator line.




;------------------HTML Submenu-----------------------
Menu, htmlSubmenuEncase, Add, <!-- &Comment -->, encase
Menu, dsc, add  ; Creates a separator line.
Menu, htmlSubmenuEncase, Add, <h1></h1>, encase
Menu, htmlSubmenuEncase, Add, <h2></h2>, encase
Menu, dsc, add  ; Creates a separator line.
Menu, htmlSubmenuEncase, Add, <b></b>, encase
Menu, htmlSubmenuEncase, Add, <i></i>, encase
Menu, htmlSubmenuEncase, Add, <i></i>, encase
Menu, htmlSubmenuEncase, Add, &div, encase




Menu, htmlSubmenu, Add, ; separator line.

;add HTML to encase
Menu, dsc, Add, &HTML Tags, :htmlSubmenuEncase, 

; stop the programe from opening encase
return


;--------------------Dev Helper Configurations-------------------------

MenuHandler1:
{
Run, Notepad.exe "C:\Users\miclandry\source\autohotkeys-master\development\encase.ahk"
return
}

MenuHandler2:
{
Run, Notepad.exe "C:\Users\miclandry\source\autohotkeys-master\development\programmer loader.ahk"
return
}

MenuHandler3:
Run, Notepad.exe "C:\Users\miclandry\source\autohotkeys-master\development\snippets.ahk"
return

#Include C:\Users\miclandry\source\autohotkeys-master\Development\encase.ahk
#Include C:\Users\miclandry\source\autohotkeys-master\Development\snippets.ahk

;alt dev stuff

!j:: send <
return
!k:: send /
return
!l:: send >
return

;lazy arrow key stuff

!s:: send {left}
return
!d:: send {down}
return
!f:: send {right}
return
!e:: send {up}
return






/*




*/