#SingleInstance Force
#Include ../Utils.ahk

; Pause script
; > Press Shift+Ctrl+X to pause. Press it again to resume.
^+X::Pause 

; Reload script
; > Press Shift+Ctrl+R to reload script. 
^+R::Reload

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
	heros := ["gregori", "feaver", "tuktrah", "lanier", "thunderfist", "caber", "omnislash", "axinux" ] ; NOTE - modify user list here - MAX OF 10
	herosCount := NumGet(&heros + 4*A_PtrSize)
	cycle := 0
	; cycles := Floor(10 / herosCount)
	Loop {
		if (cycle > 10) {
			sendKeys("/say Cannibalization >> CASTING", 0.25)
			sendKeys("/alt activate 47", 3)
			sendKeys("/say Cannibalization >> FINISHED", 0.25)
			cycle := 0
		}
		for i, hero in heros {
			sendKeys("/say Ferine Avatar >> " . heros[i] . " << Casting", 0.25)
			sendKeys("/tar " + hero, 0.5)
			sendKeys("/cast 1", 3)
			sendKeys("/say Ferine Avatar >> " . heros[i] . " << Finished Buffing", 0)
			Sleep 45000
			if (i = herosCount) {
				sendKeys("/say Ferine Avatar >> " . heros[1] . " << in 15 seconds", 0.25)
			} else {
				sendKeys("/say Ferine Avatar >> " . heros[i + 1] . " << in 15 seconds", 0.25)
			}
			Sleep 14500
		}
		cycle := cycle + 1
	}
}