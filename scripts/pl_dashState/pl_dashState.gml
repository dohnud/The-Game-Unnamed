function pl_dashState() {
	//advance dash animation
	animation_set(fdDefaultDash,plDefaultDash);
	
	//slow movement at the end of a dash
	if(frameCounter > 10) {
		xSpeed = approach(xSpeed,wSpeed*facing,frctnValue);
	}

	if(frameCounter > 10) {
		if(dir7 || dir8 || dir9){
			actJump();
		}else if(motBackash) {
			actBackdash()	
		}
	}
}