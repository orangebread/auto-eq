autoInventory(byref numberOfItems) {
	Loop, %numberOfItems% {
		sendKeys("/autoi", 0)
	}
}

attackOn() {
	sendKeys("/attack on", 0)
}

assist() {
	group("Assisting [ %t ]")
	sendKeys("/as", 2)
}

meleeAssist() {
	group("Assisting [ %t ]")
	sendKeys("/as", 6)
}

assistGregori() {
	sendKeys("/assist gregori", 6)
}

assistZabashu() {
	sendKeys("/assist zabashu", 6)
}


rangerAssist() {
	group("Assisting [ %t ]")
	sendKeys("/as", 12)
}

assistRange() {
	group("Assisting [ %t ]")
	sendKeys("/as", 2)
}

group(byref text) {
	;sendKeys("/g " text, 0)
}

say(byref text) {
	sendKeys("/say " text, 0)
}

sendKeys(byref text, postDelay){
	_sendKeys(text, postDelay * 1000)
}


_sendKeys(byref text, postDelay){
	waitForEverQuest()

	Send +{Down} ; shift + down-arrow
	Clipboard = %text%
	SendInput ^v
	Sleep 75
	Send {Enter}
	Sleep 75

	Sleep %postDelay%

	return
}

wait(byref duration) {
	sendKeys("/;Waiting 90 seconds",90)
}

waitForEverQuest() {
	IfWinNotActive, EverQuest, , WinWaitActive, EverQuest
}
