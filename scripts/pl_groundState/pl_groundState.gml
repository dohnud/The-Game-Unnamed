/// @description movement
function pl_groundState() {
	if(!onGround) {
		currentState = states.air
	}
	airdashed = false
	doublejumped = false
	mSpeed = mSpeedDefault;
	if(jumpLockout > 0) {
		jumpLockout -= 1;
	}
	
	
	//walking
	if(dir6){
	    xSpeed = facing * mSpeed * objGod.gameSpeed;
	}else if(dir4){
	    xSpeed = facing * -mSpeed * objGod.gameSpeed;
	//crouching
	}else if(dir1 || dir2 || dir3) {
		xSpeed = 0
	//jumping
	}else if((dir7 || dir8 || dir9) && jumpLockout = 0){
		actJump();
	//standing
	}else if(dir5) {
	    xSpeed = approach(xSpeed,0,0.5 * objGod.gameSpeed);
	}

		
	//dashing
	if(dir6tap[0] && dir6taplast[1] < 15 && dir4last[0] > dir6taplast[1]){
		actDash()
	}
	//backdashing
	if(dir4tap[0] && dir4taplast[1] < 15 && dir6last[0] > dir4taplast[1]){
	    actBackdash()
	}
	

//	if(p1_health <= 0) {
//		currentState = states.dead;
//	}

}
