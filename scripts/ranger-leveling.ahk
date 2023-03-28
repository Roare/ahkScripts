;39 Ranger

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

;Face {f}, Swap Melee {b}, Swap Bow {h}, Crit Shot {f9}, Auto Fire and Reload {h}
Xbutton1:: 
send, {f down}{f up}
send, ,
send, ,
send, ,
send, ,
send, ,
send, ,
send, {f9 down}{f9 up}
send, ,
send, ,
send, ,
send, ,
send, ,
send, ,
send, {h down}{h up}
send, ,
send, ,
send, ,
send, ,
send, ,
send, ,
send, {h down}{h up}
return

;Swap Melee {B}, Stick {Shift+F1}, Gale {f2}, Snow Shower {f3}, Tempest {del}, Ice Storm/Copperhead {f4}
2:: 
send, b
send, +{f1}
send, {f2}
send, {f3}
send, {del}
send, {f4}
return

;Swap Melee {B}, Stick {Shift+F1}, Blizzard {f5}, Blinding Rain {f6}, Asp's Bite {f10}, Sidewinder {f7}, Black Widow {f8}
1:: 
send, b
send, {shift down}{f1}{shift up}
send, {f6}
send, {f5}
send, {f10}
send, {f7}
send, {f8}
return

;Swap Melee {B}, Stick {Shift+F1}, Diamondback{ins}, Asp's Bite {f10}, Sidewinder {f7}, Black Widow {f8}
4:: 
send, b
send, {shift down}{f1}{shift up}
send, {ins}
send, {f10}
send, {f7}
send, {f8}
return

;Normal Shot {h}
3:: 
send, f
send, {h down}{h up}
return

;Sprint {v}, Greater Forest Shadow {f11}
Z:: 
send, v
send, {f11}
return

;Quick Sell Bags via in game Macro /sell 1 {home}, /sell 2 {PgUp}, /sell 3 {PgDn}, /sell 4 {end}
!s:: 
send, {home}
send, {PgUp}
send, {PgDn}
send, {End}
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

;Stick {Shift+F1}
;Gale {f2}
;Snow Shower {f3}
;Ice Storm/Copperhead {f4}
;Tempest {del}
;Blizzard {f5}
;Blinding Rain {f6}
;Sidewinder {f7}
;Black Widow {f8}
;Crit Shot {f9}
;Greater Forest Shadow {f11}
;Diamondback{ins}
;Asp's Bite {f10}
;/sell 1-4 {home}
;Swap Melee {B}
;Swap Bow {h}
;Use Bow {Up/Down}
;Face {f}
;send, {b down}{b up}
;send, {h down}{h up}
