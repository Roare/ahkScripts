;Hero

RETURN
SetKeyDelay, -1, 1    ;    -1 = no delay,  1 = 1ms duration
#UseHook
#IfWinActive, ahk_class DAoCMWC
#MaxThreadsPerHotkey 1
#MaxHotKeysPerInterval 400
#NoEnv

;toggle (pauses and resumes script)
+=::
Suspend,toggle
return 


;Stick - Sword Parry w/ follow up & anytime
$1::
{ 
Send, b
Send, +{f1}
Send, {f2}
Send, {f3}
Send, {f4}
}
return

;Stick - Spear evade w/ follow up & anytime
$3::
{ 
Send, n
Send, +{f1}
Send, {f5}
Send, {f6}
Send, {f7}
}
return

;Stick - Shield Side and back stun
$4::
{ 
Send, b
Send, +{f1}
Send, {f8}
Send, {f9}
}
return

;Stick - Sword Side and anytime
$2::
{ 
Send, b
Send, +{f1}
Send, {ins}
Send, {del}
Send, {home}
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
~^v:: 
Suspend, Permit
if A_IsSuspended
SendInput, % Clipboard
Return

#UseHook off
