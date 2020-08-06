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


canniDance() {
	Loop {
		sendKeys("/cast 2", 6.5)
	}
}

