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
	symphonyAndAssist()

startAssist() {
	Loop {
        assist() ; located in Utils.ahk, modify char name
		;followAndAssist() ; located in Utils.ahk, modify char name
	}
}

symphonyAndAssist() {
    Loop {
        count = 0
        sendKeys("/useitem Songblade of the Eternal", 10)
        Sleep 75
        Send {2} ; Selects melody macro on hotbar
        Sleep 75
        while (count < 14) {
            assist()
            count := count + 1
            Sleep 6000
        }
    }
}