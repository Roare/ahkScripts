;Necromancer

RETURN
#UseHook
#IfWinActive, ahk_class DAoCMWC
SetKeyDelay 80,40
;toggle (pauses and resumes script)
+NumLock::
Suspend,toggle
return 

;Take/Give Power
1::
send, {f6}{f8}{f7}
return

;GT + NM
F5::
send, {f9}{f11}
return

;Target pet and full buff it
+q::
send, {Insert}{Delete}{Home}{End}{PgUp}
return



#UseHook off