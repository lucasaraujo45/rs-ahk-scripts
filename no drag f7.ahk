#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetTitleMatchMode, 1
~LButton::
{
GetKeyState, 123, ESC
if 123 = U
send {Lbutton up} 
return
}
return


F7::
Suspend
return


;1 HUNIT

Esc::ExitApp