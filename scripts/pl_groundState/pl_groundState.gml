/// @description movement
function pl_groundState() {
	if(!onGround) {
		state_reset();
	}
	
	actAutocorrect();
	
	airdashed = false
	doublejumped = false
	
	//walking
	if(dir6) {
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
	if(motDash){
		actDash()
	}
	//backdashing
	if(motBackash){
	    actBackdash()
	}
	
	//attacks
	if(atkLPtap){
		atk5LP()
	}
	
//	if(p1_health <= 0) {
//		currentState = states.dead;
//	}

}
