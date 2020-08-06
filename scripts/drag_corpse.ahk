#Include ../Utils.ahk

; Pause
; > Press Shift+Ctrl+X to pause. Press it again to resume.
^+X::Pause 

^!3::

dragCorpse() {
	sendKeys("/corpse", .5)
}
dragCorpse()