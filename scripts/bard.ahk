;Bard

RETURN
#UseHook
#IfWinActive, ahk_class DAoCMWC
#MaxThreadsPerHotkey 1
#MaxHotKeysPerInterval 200
#NoEnv

;toggle (pauses and resumes script)
+Numlock::
Suspend,toggle
return 

;Mez and demez
3:: 
send, f
send, {f9}
send, {f11}
return

;Face w/ AoE Mez
4:: 
send, f
send, {del}
return

;Amnesia Interrupt
2:: 
send, {f3}
return

;Sword Parry and Taunt
1:: 
send, b
send, {f1}
send, {f2}
send, +{f9}
return

;Speed Song
!1:: 
send, h
send, {f5}
return

;Endurance Song
!2:: 
send, h
send, {f6}
return

;Power Song
!3:: 
send, h
send, {f7}
return 

;Heal Song
!4:: 
send, h
send, {f8}
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