function pl_airdashState() {
	if(dashDur > 5) {
		ySpeed = -0.4;
	}
	if(dashDur <= 10) {
		xSpeed = approach(xSpeed,0,0.5 * objGod.gameSpeed);
	}

	dashDur -= 1 * objGod.gameSpeed;
	if(dashDur <= 0){
	    state_reset();
	}
	
	if((dir7 || dir8 || dir9) && (!dir7hold && !dir8hold && !dir9hold) && !doublejumped){
		actJump();
	}

}