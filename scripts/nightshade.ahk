;44 Nightshade

RETURN
#UseHook
#IfWinActive, ahk_class DAoCMWC
#MaxThreadsPerHotkey 1
#MaxHotKeysPerInterval 100
#NoEnv

;toggle (pauses and resumes script)
+=::
Suspend,toggle
return 

;Thigh Cut{ins} & Backstab 2{home} or Stunning stab{f8} Creeping Death{up} & Perforate Artery{del}
$3:: 
{
Send, {Shift down}{f1}{Shift up}
Send, {Ins}
Send, {Home}
Send, {f8}
Send, {Up}
Send, {del}
}
return

;Stick+{f1} Leaper{=} & Hamstring{f2} or Achilles Heel{right} & Garrote{f3} & Instant DD{PgUp}
$1:: 
{
Send, {Shift down}{f1}{Shift up}
Send, b
Send, {=} 
Send, {f2}
Send, {right} 
Send, {f3}
Send, {PgUp}
}
return

;Cast DD{PgDn} Solo
$Xbutton1:: 
{
Send, f{PgDn}
}
return

;Stick+{f1} Hornet Sting{f5} & Wasp Sting{f6} or Pincer{f7}
$2:: 
{
Send, {Shift down}{f1}{Shift up}
Send, b
Send, {f5}
Send, {f6}
Send, {f7}
}
return

;Stick+{f1} Diamondback{-} or Achilles Heel{right} & Garrote{f3} & Instant DD{PgUp}
$4:: 
{
Send, {Shift down}{f1}{Shift up}
Send, b
Send, {-} 
Send, {right} 
Send, {f3}
Send, {PgUp}
}
return

;Stick+{f1} Leaper{=} & Hamstring{f2} or Asp's Bite{y} & Sidewinder{left} & Black Widow{p} & Instant DD{PgUp}
$5:: 
{
Send, {Shift down}{f1}{Shift up}
Send, b
Send, {=} 
Send, {f2}
Send, {y} 
Send, {left}
Send, {p}
Send, {PgUp}
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
Send, o
Send, [
}
return

;Weapon swap slots 5-6
$8::
{ 
Send, k
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

;Send k
;Send z
;Send {\}
;Send {f11}

;/qbind list

;Thigh Cut {ins}
;Backstab 2{home}
;Stunning stab{f8}
;Creeping Death{up}
;Perforate Artery{del}
;Stick{Shift f1}
;Leaper{=}
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
;MH Weapon in slot 3{o}
;Offhand Weapon in slot 4{ [ }
;MH Weapon in slot 5{k}
;Offhand Weapon in slot 6{z}
;Lethal Poison{f11}
;Infection Poison{f9}
;Con/wep skill Poison{end}
;Str Poison{\}