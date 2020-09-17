function actAirdash(dir) {
	dashDur = 20;
	squash_stretch(1.3,0.7);
	if(dir = 6) {
		xSpeed = 2 * facing;
	}else if(dir = 4) {
		xSpeed = -2 * facing;
	}else {
		xSpeed = 0
		ySpeed = 0
	}
	currentState = states.airdash;
	airdashed = true;
}