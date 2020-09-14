function pl_recoveryState() {
	//slow horizontal speed
	xSpeed = approach(xSpeed,0,aSpeed * objGod.gameSpeed);

	//count down recoverDur until it reaches 0, and then reset to normal state
	recoverDur -= 1 * objGod.gameSpeed;
	if(recoverDur <= 0){
	    recoverDur = 20;
	    state_reset();
	}

	//delete your hitbox if one was active
	if(hitbox != -1){
	    with(hitbox){
	        destroy = true;
	    }
	}



}
