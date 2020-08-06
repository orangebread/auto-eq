#SingleInstance Force
#Include ../Utils.ahk

^+2::Pause  ; Press Shift+Alt+3 to pause. Press it again to resume.

^+1:: ; Press Shift+Alt+1 to run.
	SetCapsLockState, off
	assistG()

assistG() {
	Loop {
		assistGregori()
		; assistZabashu()
	}
}
