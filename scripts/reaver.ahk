;Reaver

RETURN
#UseHook
#IfWinActive, ahk_class DAoCMWC
#MaxThreadsPerHotkey 1
#MaxHotKeysPerInterval 400
#NoEnv

;toggle (pauses and resumes script)
+=::
Suspend,toggle
return 

;Stick+{f1} > Copperhead{f5} > Viper{f6} > BlackSnake{f7}
$1:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {f5}
Send, {f6}
Send, {f7}
}
return

;Stick+{f1} > IndigoSnake{f11} > Asp{f9}
$2:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {f11}
Send, {f9}
}
return

;Stick+{f1} > TigerSnake{f3} > KingSnake{f4} > BlackSnake{f7}
$3:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {f3}
Send, {f4}
Send, {f7}
}
return

;Stick+{f1} > Disable{f1} > Numb{f2}
$4:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {f1}
Send, {f2}
}
return

;Cast Lifetap 1{Ins}
Xbutton2:: 
{
Send, {Ins}
}
return

;Cast Lifetap 2{Del}
Xbutton1:: 
{
Send, {Del}
}
return

;Cast DoT 1{Home}
WheelUp:: 
{
Send, {Home}
}
return

;Cast DoT 2{End}
WheelDown:: 
{
Send, {End}
}
return

;Suspend when typing
~NumpadEnter::
~+Enter::
~Enter::
Suspend, Toggle
ToolTip, % A_IsSuspended ? "Script Suspended" : ""
Return

;Other keys that open chat /commands,  console, r reply key
~NumpadDiv::
~/::
~'::
~r::
Suspend, On
ToolTip, Script Suspended
Return

;Escape closes chat window
~esc::
Suspend, Off
ToolTip
Return

;control v windows default paste command
$^v:: 
Suspend, Permit
if A_IsSuspended
SendInput, % Clipboard
Return

#UseHook off
