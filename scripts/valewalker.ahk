;Valewalker

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

;Face {f}, Lifetap {f9}
Xbutton1:: 
send, f
send, {f9}
return

;Swap Melee {B}, Stick {Shift+F1}, Gale {f2}, Snow Shower {f3}, Tempest {del}, Ice Storm/Copperhead {f4}
1:: 
send, +{f1}
send, {f2}
send, {f3}
send, {=}
send, {f4}
send, {f6}
return

;Swap Melee {B}, Stick {Shift+F1}, Blizzard {f5}, Blinding Rain {f6}, Asp's Bite {f10}, Sidewinder {f7}, Black Widow {f8}
2:: 
send, +{f1}
send, {ins}
send, {del}
send, {home}
send, {end}
send, {pgup}
send, {pgdn}
return

;Swap Melee {B}, Stick {Shift+F1}, Diamondback{ins}, Asp's Bite {f10}, Sidewinder {f7}, Black Widow {f8}
3:: 
send, +{f1}
send, {f7}
send, {f8}
send, {f10}
send, {f4}
send, {f6}
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

;/qbind list - Put the styles/abilities on you bars then qbind them to these keys.

