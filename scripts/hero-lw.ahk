;Large Weapon Hero

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

;Spec - 50 LW 42 Shield 20 Pierce 34 Parry
;Create Target Macro /macro target /target %t
;Create Swap Macro /macro swap /switch 2h 1

;Swap LW {n} Stick {shift F1} Gigantic Blow {f2} Hibernian Vigor {f3} Celtic Rage {f4} or Domination/Frontal Assault {f5}
$3::
{ 
Send, n
Send, +{f1}
Send, {f2}
Send, {f3}
Send, {f4 down}{f4 up}
Send, {f5}
}
return

;Swap LW {n} Stick {shift F1} Devestate {f6} Ultimate Recovery {f7} or Shatter {f8}
$5::
{ 
Send, n
Send, +{f1}
Send, {f6}
Send, {f7}
Send, {f8}
}
return

;Stick {shift F1} Swap LW {n} Demolish {f9} Obliteration {f10} Hibernian Force {f11} or Annihilation {ins}
$4::
{ 
Send, +{f1}
Send, n
Send, {f9}
Send, {f10}
Send, {f11}
Send, {ins}
}
return

;Swap LW {n} Stick {shift F1} Annhilation {ins} or Domination/Hibernian Wrath {del}
$2::
{ 
Send, n
Send, +{f1}
Send, {ins}
Send, {del}
}
return

;Swap MH {b} Stick {shift F1} Slam {home}
$1::
{ 
Send, b
Send, +{f1}
Send, {home}
}
return

;Swap MH {b} Stick {shift F1} Bumblebee sting {right}
$6::
{ 
Send, b
Send, +{f1}
Send, {right}
}
return

;Auto Engage Swap to shield {b} Face {f} Engage {[}
y::
{ 
Send, b
Send, f
Send, {[}
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

;/qbind list
;Swap LW {n}
;Stick {shift F1} 
;Gigantic Blow {f2} 
;Hibernian Vigor {f3} 
;Celtic Rage {f4} 
;Domination/Frontal Assault {f5}
;Devestate {f6} 
;Ultimate Recovery {f7}  
;Shatter {f8}
;Demolish {f9} 
;Obliteration {f10} 
;Hibernian Force {f11}
;Annihilation {ins}
;Domination/Hibernian Wrath {del}
;Slam {home}
;Bumblebee sting {right}
;Face {f} 
;Engage {[}
;Swap MH {b}