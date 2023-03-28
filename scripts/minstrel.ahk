;44 Ministrel

RETURN
#UseHook
#IfWinActive, ahk_class DAoCMWC

;toggle Script(pauses and resumes script) -UPDATED-
+NumLock::
Suspend,toggle
ToolTip, % A_IsSuspended ? "Script Suspended" : ""
return 

;DD styles, ablative song w/ stick
1:: send b{f1}{f2}{f3}{f4}{f5}{f6}{f7}
return

;side and back styles
2:: send b{f1}{f8}{f9}{f11}{f5}y
return

;Target pet demez
0:: send ^{f1}f^{f2}
return

;speed song
z:: send ^{f5}^{f6}^q
return

;Heal song
5:: send {f5}^{f5}^{f7}
return

;power song
6:: send {f5}^{f5}^{f10}
return

;single target mez and demez
3:: send nf^{f5}^{f11}^{f2}
return

;grab pet
^e:: send n{tab}{tab}!0
return

;stun into mez
8:: send yn^{f11}
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