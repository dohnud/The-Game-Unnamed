/// @description movement
function pl_airState() {
	if(onGround && ySpeed >= 0) {
		currentState = states.ground
	}
		        
	animation_set(fdDefaultJump,plDefaultJump);
	//change sprite frame based on vertical speed
	if(ySpeed < 1){
	    currentFrame = 0;
	}else{
	    currentFrame = 1;
	}
	grav = true;
	
	//drift
	if(dir6 && xSpeed<=aSpeed){
	    xSpeed = approach(xSpeed,aSpeed*facing,0.1 * god.gameSpeed);
	}else if(dir4 && xSpeed>=-aSpeed){
	    xSpeed = approach(xSpeed,-aSpeed*facing,0.1 * god.gameSpeed);
	}

	//jumping
	if((dir7 || dir8 || dir9) && (!dir7hold && !dir8hold && !dir9hold) && !doublejumped){
		actJump();
	}
		
	//airdashing
	if(motDash && !airdashed){
			actAirdash()
	}
	if(motBackash && !airdashed){
	        actAirdashBack()
	}

//	if(p1_health <= 0) {
//		currentState = states.dead;
//	}

}