function pl_tumbleState() {
	//slow horizontal speed
	if(onGround){
	    xSpeed = approach(xSpeed,0,0.1 * objGod.gameSpeed);
	}else{
	    xSpeed = approach(xSpeed,0,0.01 * objGod.gameSpeed);
	}

	//count down your hitStun until it reaches 0
	hitStun -= 1 * objGod.gameSpeed;
	if(hitStun <= 0){
	    state_reset();
	}



}
