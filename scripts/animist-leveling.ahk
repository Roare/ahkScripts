;Animist

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

;Face {f}, Place ground target w/ mouse {.} Summon Turret pet {f2}
Xbutton1:: 
send, .
send, {f2}
send, {del}
return

;Face {f}, Spirit DD {f3}
2:: 
send, f
send, {f3}
return

;Face {f}, Spirit DD+Body debuff{f4}
3:: 
send, f
send, {f4}
return

;Face {f}, Life tap DD {f5}
4:: 
send, f
send, {f5}
return

;Face {f}, AOE 350 Bomb {f6}
6:: 
send, f
send, {f6}
return

;Release Clump {f11}

;Summon pet {f9}, /macro 200 /groundset 200 {ins}
!2:: 
send, {ins}
send, {f9}
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

;Place ground target w/ mouse {.}
;Summon Turret pet {f2}
;Face {f}
;Spirit DD {f3}
;Spirit DD+Body debuff{f4}
;Life tap DD {f5}
;AOE 350 Bomb {f6}
;Release Clump {f11}
;Summon pet {f9}
;200 range GT {ins}