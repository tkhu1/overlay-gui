#SingleInstance force
#Persistent

CoordMode, Mouse, Screen

 ; init gui application
Gui, Add, Button, w100, Add
Gui, Add, Button, xp100 w100, Reset
GUi, Show, % "x" ( A_ScreenWidth - 230 ) " y10 w220"
return

 ; close gui pplication
GuiClose:
ExitApp

 ; logic to add a button on screen
ButtonAdd:
MsgBox, Move the mouse to where you want and press the button you want.
Input, Key, L1
MouseGetPos, X, Y
%Key% := X "|" Y
Hotkey, %Key%, Click
Return

 ; reloads script to add a new button on screen
Buttonreset:
Reload
return

 ; activates the click function to simulate a mouse click on the screen
Click:
StringSplit, _, %A_THisHotkey% , |
MouseClick, Left, %_1%, %_2%
Return
