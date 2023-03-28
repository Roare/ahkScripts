;39 Shadowblade

RETURN
#UseHook
#IfWinActive, ahk_class DAoCMWC
#MaxThreadsPerHotkey 3
#MaxHotKeysPerInterval 400
#NoEnv

;toggle (pauses and resumes script)
+=::
Suspend,toggle
return 

;Thigh Cut{ins} & Backstab 2{home} or Perforate Artery{del}
$3:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {Ins}
Send, {Home}
Send, {del}
}
return

;Stick+{f1} Comeback{left} & Frosty Gaze{f2} or DoubleFrost{f3}
$1:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {left} 
Send, {f2}
Send, {f3}

}
return

;Cast DD{PgDn} Solo
$Xbutton1:: 
{
Send, f{PgDn}
}
return

;Stick+{f1} Squall{f6} or Pincer{f7}
$2:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {f6}
Send, {f7}
}
return

;Stick+{f1} Garrote{-}
$4:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {-} 
}
return

;Stick+{f1} Scathing blade{f5}, Atrophy{pgup}, Ravager{pgdn}
$5:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {f5} 
Send, {pgup} 
Send, {pgdn}
}
return

;Poison Weapon Sets 1, 2, & 3 Lethal{f11} Infection{f9} Con/wep skill{end} Str{\}
$+q:: 
{
Send {f11}
Send, ,
Send, ,
Send, ,
Send {end}
Send, ,
Send, ,
Send, ,
Send {Shift down}z{Shift up}
Send, ,
Send, ,
Send, ,
Send {Ctrl down}e{Ctrl up}
Send, ,
Send, ,
Send, ,
Send {f9}
Send, ,
Send, ,
Send, ,
Send {end}
Send, ,
Send, ,
Send, ,
Send o
Send, ,
Send, ,
Send, ,
Send [
Send, ,
Send, ,
Send, ,
Send {\}
Send, ,
Send, ,
Send, ,
Send {f11}
Send, ,
Send, ,
Send, ,
Send k
Send, ,
Send, ,
Send, ,
Send z
Send, ,
Send, ,
Send, ,
Send {f11}
Send, ,
Send, ,
Send, ,
Send {f9}
}
return

;Weapon swap slots 1-2
$6:: 
{
Send, {Shift down}z{Shift up}
Send, {Ctrl down}e{Ctrl up}
}
return

;Weapon swap slots 3-4
$7::
{ 
Send, {Shift down}o{Shift up}
Send, [
}
return

;Weapon swap slots 5-6
$8::
{ 
Send, {Shift down}g{Shift up}
Send, z
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

;/qbind list

;Thigh Cut {ins}
;Backstab 2{home}
;Stunning stab{f8}
;Creeping Death{up}
;Perforate Artery{del}
;Stick{Shift f1}
;Leaper{left}
;Hamstring{f2}
;Achilles Heel{right}
;Garrote{f3}
;Instant DD{PgUp}
;Hornet Sting{f5}
;Wasp Sting{f6}
;Pincer{f7}
;Diamondback{-}
;MH Weapon in slot 1{Shift z}
;Offhand Weapon in slot 2{Ctrl e}
;MH Weapon in slot 3{Shift o}
;Offhand Weapon in slot 4{ [ }
;MH Weapon in slot 5{Shift g}
;Offhand Weapon in slot 6{z}