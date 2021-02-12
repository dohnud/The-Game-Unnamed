function pl_dashState() {
	//advance dash animation
	fCounter+= 1;
	animation_set(fdDefaultDash,plDefaultDash);
	
	//slow movement at the end of a dash
	if(fCounter > 10) {
		xSpeed = approach(xSpeed,wSpeed*facing,frctnValue);
	}

	if(fCounter > 10) {
		if(dir7 || dir8 || dir9){
			actJump();
		}else if(motBackash) {
			actBackdash()	
		}
	}
	
	if(fCounter = 18){
		if(dir6) {
			state_change(states.run)
		}
		else {	
			state_reset();
		}
	}
}