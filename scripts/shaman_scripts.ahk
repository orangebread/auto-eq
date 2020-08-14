#SingleInstance Force
#Include ../Utils.ahk

; Pause script
; > Press Shift+Ctrl+X to pause. Press it again to resume.
^+X::Pause 

; Infinite Cannibalize. 
; > Press Shift+Ctrl+1 to run.
^+1::
	SetCapsLockState, off
	canniDance()


; Auto Ferine Avatar 
; > Press Shift+Ctrl+2 to run. Requires you to manually input users. Spell gem for Ferine Avatar should be in Slot 1.
^+2::
	SetCapsLockState, off
	autoAvatar()

canniDance() {
	Loop {
		sendKeys("/cast 2", 6.5)
	}
}

autoAvatar() {
	heros := ["gregori", "bonar", "gregori"] ; NOTE - modify user list here
	herosCount := NumGet(&heros + 4*A_PtrSize)
	Loop {
		for i, hero in heros {
			sendKeys("/say Ferine Avatar >> " . heros[i] . " << Casting", 0.25)
			sendKeys("/tar " + hero, 0.5)
			sendKeys("/cast 1", 3)
			Sleep 45000
			if (i = herosCount) {
				sendKeys("/say Ferine Avatar >> " . heros[1] . " << in 15 seconds", 0.25)
			} else {
				sendKeys("/say Ferine Avatar >> " . heros[i + 1] . " << in 15 seconds" . i, 0.25)
			}
			Sleep 14500
		}
	}
}