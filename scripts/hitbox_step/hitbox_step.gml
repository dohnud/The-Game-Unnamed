function hitbox_step() {
	//count down the duration of the hitbox and destroy it when duration reaches 0
	dur -= 1 * objGod.gameSpeed;

	if(dur <= 0){
	    destroy = true;
	}



}
