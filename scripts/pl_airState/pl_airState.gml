/// @description movement
function pl_airState() {
	if(onGround && ySpeed >= 0) {
		currentState = states.ground
	}
	aSpeed = aSpeedDefault;
	if(jumpLockout > 0) {
		jumpLockout -= 1;
	}
	if(ySpeed < 0){
	    ySpeed *= 0.8;
	}
		
	//mobility
	if(dir6 && xSpeed<=aSpeed){
	    xSpeed = approach(xSpeed,aSpeed*facing,0.1 * objGod.gameSpeed);
	}else if(dir4 && xSpeed>=-aSpeed){
	    xSpeed = approach(xSpeed,-aSpeed*facing,0.1 * objGod.gameSpeed);
	}

	//jumping
	if((dir7 || dir8 || dir9) && (!dir7hold && !dir8hold && !dir9hold) && !doublejumped && jumpLockout = 0){
		actJump();
	}
		
	//airdashing
	if(dir6tap[0] && dir6taplast[1] < 15 && !airdashed && dir4last[0] > dir6taplast[1]){
			actAirdash(6)
	}
	if(dir4tap[0] && dir4taplast[1] < 15 && !airdashed && dir6last[0] > dir4taplast[1]){
	        actAirdash(4)
	}

//	if(p1_health <= 0) {
//		currentState = states.dead;
//	}

}