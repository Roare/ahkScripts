;Skald

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

;Stick+{f1} > Slam{f5} > Crushing Blow{f6} > Ruiner{f7}
$1:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {f5}
Send, {f6}
Send, {f7}
}
return

;Battle Chants
!2::
{
Send, \
Send, ,
Send, ,
Send, ,
Send, [
Send, ,
Send, ,
Send, ,
Send, {Shift down}{f2}{Shift up}
Send, ,
Send, ,
Send, ,
Send, {Shift down}{f3}{Shift up}
Send, ,
Send, ,
Send, ,
Send, {Shift down}{f4}{Shift up}
Send, ,
Send, ,
Send, ,
Send, {Shift down}{f5}{Shift up}
Send, ,
Send, ,
Send, ,
Send, {Shift down}{f6}{Shift up}
Send, ,
Send, ,
Send, ,
Send, {Shift down}{f7}{Shift up}
Send, ,
Send, ,
Send, ,
Send, {Shift down}{f8}{Shift up}
}

;Stick+{f1} > Frost Hammer{f11} > Ruiner{f9}
$2:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {f11}
Send, {f9}
}
return

;Cast Shout 1{Ins}
Xbutton2:: 
{
Send, {Ins}
}
return

;Cast Shout 2{Del}
Xbutton1:: 
{
Send, {Del}
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
