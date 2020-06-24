; program selector


openProgramSelector()
{
Menu, ProgramSelector, add, calculator
Menu, ProgramSelector, add, sublime_text_3

Menu, ProgramSelector, Show

return



calculator:
{
run C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\calculator
return
}

sublime_text_3:
{
    openSublime()
    return
}























}

