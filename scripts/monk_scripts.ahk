#SingleInstance Force
#Include ../Utils.ahk

; Pause script
; > Press Shift+Ctrl+X to pause. Press it again to resume.
^+X::Pause 

; Reload script
; > Press Shift+Ctrl+R to reload script. 
^+R::Reload

; Assist. 
; > Press Shift+Ctrl+1 to run.
^+1::
	SetCapsLockState, off
	startAssist()

startAssist() {
	Loop {
		assist() ; located in Utils.ahk, modify char name
		;followAndAssist() ; located in Utils.ahk, modify char name
	}
}
