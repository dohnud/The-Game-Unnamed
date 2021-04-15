/// @description movement
function pl_groundState() {
	if(!onGround) {
		state_reset();
	}
	
	actAutocorrect();
	
	airdashed = false
	doublejumped = false
	
	//blocking
	if(dir4 || dir7) {
		hurtbox.block = 1;
	} else if(dir1) {
		hurtbox.block = 2;
	} else {
		hurtbox.block = 0;
	}
	
	//walking
	if(dir6) {
		//if(lastState = states.dash){
		//	actRun();
		//}
	    actWalk();
	}
	if(dir4) {
	    actWalkback();
	}
	
	//crouching
	if(dir1 || dir2 || dir3) {
		actCrouch();
	}
		
	//jumping
	if((dir7 || dir8 || dir9)){
		actJump();
	}
	
	//standing
	if(dir5) {
		actStand();
	}
	
	//dashing
	if(dir6tap[0] && motDash){
		actDash()
	}
	//backdashing
	if(dir4tap[0] && motBackash){
	    actBackdash()
	}
	
	//attacks
	if(atkLPtap){
		atksLP()
	}
	
//	if(p1_health <= 0) {
//		currentState = states.dead;
//	}

}
