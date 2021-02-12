function actAirdash(dir) {
	fCounter = 0;
	if(dir = 6) {
		xSpeed = 2.5 * facing;
	}else if(dir = 4) {
		xSpeed = -2.5 * facing;
	}else {
		xSpeed = 0
		ySpeed = 0
	}
	currentState = states.airdash;
	airdashed = true;
}