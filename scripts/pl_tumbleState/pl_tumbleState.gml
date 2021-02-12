function pl_tumbleState() {
	//slow horizontal speed
	if(onGround){
	    xSpeed = approach(xSpeed,0,0.1 * god.gameSpeed);
	}else{
	    xSpeed = approach(xSpeed,0,0.01 * god.gameSpeed);
	}

	//count down your hitStun until it reaches 0
	hitStun -= 1 * god.gameSpeed;
	if(hitStun <= 0){
	    state_reset();
	}



}
