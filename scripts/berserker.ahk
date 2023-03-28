;Berserker

RETURN
#UseHook
#IfWinActive, ahk_class DAoCMWC
#MaxThreadsPerHotkey 1
#MaxHotKeysPerInterval 200
#NoEnv

;toggle Script(pauses and resumes script) - UPDATED-
+NumLock::
Suspend,toggle
ToolTip, % A_IsSuspended ? "Script Suspended" : ""
return 

;Stick > After style 1 > Evade/parry > After style 2 > Anytime/Front 
1:: 
send, +{f1}
send, {f2}
send, {f3}
send, {f4}
return

;Stick > After style 1 > Evade/parry > After style 2 > Anytime/Front 
2:: 
send, +{f1}
send, {f9}
send, {f11}
send, {f4}
send, {x}
return

;Stick > Side follow up > Side Stun > Back follow up > Back style
3:: 
send, +{f1}
send, {f5}
send, {f6}
send, {f7}
send, {f8}
return

;Suspend when typing -NEW-
~NumpadEnter::
~+Enter::
~Enter::
Suspend, Toggle
ToolTip, % A_IsSuspended ? "Script Suspended" : ""
Return

;Other keys that open chat /commands,  console, r reply key -NEW-
~NumpadDiv::
~/::
~'::
~r::
Suspend, On
ToolTip, Script Suspended
Return

;Escape closes chat window -NEW-
~esc::
Suspend, Off
ToolTip
Return

;control v windows default paste command -NEW-
~^v:: 
Suspend, Permit
if A_IsSuspended
SendInput, % Clipboard
Return

#UseHook off

