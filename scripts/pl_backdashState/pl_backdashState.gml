function pl_backdashState() {
	//advance dash animation
	animation_counter()
	animation_set(fdDefaultDashback,plDefaultDash);
	
	//slow movement at the end of a dash
	if(frameCounter > 10) {
		xSpeed = approach(xSpeed,wbSpeed*facing,frctnValue);
	}
	
	if(frameCounter > 10) {
		if(motDash) {
			actDash()	
		}
	}
}