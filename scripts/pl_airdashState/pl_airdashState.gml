function pl_airdashState() {
	animation_set(fdDefaultDash,plDefaultDash);
	ySpeed = 0;
	fCounter += 1;
	grav = false;

	if(fCounter = 10){
		grav = true;
	    state_reset();
	}
}