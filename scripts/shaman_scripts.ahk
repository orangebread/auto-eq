#SingleInstance Force
#Include ../../Utils.ahk

^+2::Pause  ; Press Ctrl+Alt+P to pause. Press it again to resume.

^+1::
	SetCapsLockState, off
	canniDance()


canniDance() {
	Loop {
		sendKeys("/cast 2", 6.5)
	}
}

