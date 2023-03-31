# ahkScripts
AutoHotKey scripts for use in Dark Age of Camelot

These were originally created and made available by Hazefest of the OpenDAoC freeshard community.

## Example format
```
;(Name of class)

Examples of button presses (Shift modifiers = +, Control modifiers = ^, Alt modifiers = !):
  Control + F1 = ^{f1}
  Alt + Q = !q
  Insert = {Ins}
  Page Up = {PgUp}
  Shift + NumLock = +{numlock}

RETURN

#UseHook
#IfWinActive, ahk_class DAoCMWC
;toggle (pauses and resumes script)
+NumLock:: <--(This is what you press to toggle the script.)
Suspend,toggle
return 

;Name of Spells/Skills Used Below
(Delete all this text except the :: at the end and put the key you want to use, example 1 or q)::
send, (Delete this and put the keys that you qbound for spells here. Use {} around keys like F7 or Insert(Ins), Delete(Del)--e.g., {Del}, {f7}, {Ins}, {PgUp})
return

;Side Stun & Back Snare Example Styles
2::
send, {f7}{f6}{Home}
return

;Cure Poison/Taunt Example Spells with Enemy/Ally target
9::
send, {PgDn}{Insert}
return

#UseHook off

```