function pl_backdashState() {
	if(dashDur <= 5) {
		xSpeed = approach(xSpeed,0*facing,0.5 * objGod.gameSpeed);
	}

	//count down dashDur and reset state to normal when dashDur reaches 0
	dashDur -= 1 * objGod.gameSpeed;
	if(dashDur <= 0){
	    state_reset();
	}
	
	if(dir7 || dir8 || dir9){
		actJump();
	}
	
	
	if(dir6tap[0] && dir6taplast[1] < 15 && dir4last[0] > dir6taplast[1]) {
		actDash()
	}
	
	if((dir1 || dir2 || dir3) && dashDur < 15) {
		state_reset();
	}
}