function pl_dashState() {
	if(dashDur <= 5) {
		xSpeed = approach(xSpeed,rSpeed*facing,0.5 * objGod.gameSpeed);
	}

	//count down dashDur and reset state to normal when dashDur reaches 0
	dashDur -= 1 * objGod.gameSpeed;
	if(dashDur <= 0){
		if(dir6) {
			state_change(states.run)
		}
		else {	
			state_reset();
		}
	}
	
	if(dir7 || dir8 || dir9){
		actJump();
	}
	
	if(!dir5 && dashDur < 15 && absolute(xSpeed) < mSpeedDefault) {
		state_reset();
	}
	
	if(dashDur < 10) {
		if(dir4tap[0] && dir4taplast[1] < 15  && dir6last[0] > dir4taplast[1]) {
			actBackdash()
		}
	}
	
	if((dir1 || dir2 || dir3) && dashDur < 15) {
		state_reset();
	}
	
}