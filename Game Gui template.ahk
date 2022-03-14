;Setting up 
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

;Icon
Menu Tray, Icon, shell32.dll, 81

;Main Menu 
Gui +Resize
Gui Font, s9, Segoe UI
Gui Add, Text, x136 y104 w4 h0 +0x200 , Text
Gui Font
Gui Font, s100 Bold Underline, Ms Shell Dlg
Gui Add, Text, vGameTitle x64 y56 w406 h189 +0x200 , Game 
Gui Font
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s20 Bold, Ms Shell Dlg
Gui Add, Button, hWndhBtnPlay vPlayButton x70 y289 w257 h129 +Default , Play 
Gui Font
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s20 Bold, Ms Shell Dlg
Gui Add, Button, vOptionsButton x72 y464 w257 h129 +Default , Options
Gui Font
Gui Font, s9, Segoe UI
Gui Font
Gui Font, s20 Bold
Gui Add, Button, vExitButton x936 y472 w257 h129 +Default, Exit 
Gui Font
Gui Font, s9, Segoe UI
Gui Maximize

Gui Show, w1366 h597, Game
Return

GuiSize:
    If (A_EventInfo == 1) {
        Return
    }

Return

;When play clicked 
ButtonPlay:
GuiControl Hide, PlayButton 
GuiControl Hide, ExitButton
GuiControl Hide, OptionsButton 
GuiControl Hide, GameTitle 
;Enter here what happens once play is clicked 
Return 

;When options clicked 
ButtonOptions:
GuiControl Hide, PlayButton 
GuiControl Hide, ExitButton
GuiControl Hide, OptionsButton 
GuiControl Hide, GameTitle 
;Enter here what happens once play is clicked 
Return 

;End 
ButtonExit:
GuiEscape:
GuiClose:
    ExitApp
