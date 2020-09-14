function pl_dashState() {
	//zero out ySpeed and gradually slow down the xSpeed
	ySpeed = 0;
	xSpeed = approach(xSpeed,0,0.5 * objGod.gameSpeed);

	//count down dashDur and reset state to normal when dashDur reaches 0
	dashDur -= 1 * objGod.gameSpeed;
	if(dashDur <= 0){
	    state_reset();
	}



}
