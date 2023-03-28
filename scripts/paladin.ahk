;Paladin 

RETURN
#UseHook
#IfWinActive, ahk_class DAoCMWC
;toggle (pauses and resumes script)
+NumLock::
Suspend,toggle
return 

;Anytime/Evade w/ follow-ups
1:: send {Up}{Down}{Left}{Right}
return

;Side Stun and Back snare
3:: send {Home}{-}{\}
return

;Pally Chants 
Xbutton1:: 
{
Send {Ctrl down}{f1}{Ctrl up}
Send {Ctrl down}{f2}{Ctrl up}
Send {Ctrl down}{f3}{Ctrl up}
Send {Ctrl down}{f4}{Ctrl up}
Send {Ctrl down}{f5}{Ctrl up}
Send {Ctrl down}{f6}{Ctrl up}
Send {Ctrl down}{f7}{Ctrl up}
Send {Ctrl down}{f8}{Ctrl up}
Send {Ctrl down}{f9}{Ctrl up}
Send {Ctrl down}{f10}{Ctrl up}
Send {Ctrl down}{f11}{Ctrl up}
Send =
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

