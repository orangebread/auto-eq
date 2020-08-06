#SingleInstance Force
#Include ../Utils.ahk

; Pause
; > Press Shift+Ctrl+X to pause. Press it again to resume.
^+X::Pause 

; Assist. 
; > Press Shift+Ctrl+1 to run.
^+1:: 
	SetCapsLockState, off
	startAssist()

; Clicks Symphony of Battle and continues melody. 
; > Press Shift+Ctrl+2 to run.
^+2:: 
	SetCapsLockState, off
	symphony()

startAssist() {
	Loop {
        assist() ; located in Utils.ahk, modify char name
		;followAndAssist() ; located in Utils.ahk, modify char name
	}
}

symphony() {
    Loop {
        sendKeys("/useitem Songblade of the Eternal", 4)
        Send {2} ; Selects melody macro on hotbar

        Sleep 850 * 1000
    }
}