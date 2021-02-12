function pl_backdashState() {
	//advance dash animation
	fCounter += 1;
	animation_set(fdDefaultDashback,plDefaultDash);
	
	//slow movement at the end of a dash
	if(fCounter > 10) {
		xSpeed = approach(xSpeed,0*facing,0.5 * god.gameSpeed);
	}
	
	if(fCounter > 10) {
		if(motDash) {
			actDash()	
		}
	}
	
	//dash duration	
	if(fCounter = 18) {
	    state_reset();
	}
}