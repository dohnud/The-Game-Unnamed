function recovery_set() {
	//interrupt air attacks when landing on the ground and put the player into a recovery state
	if(onGround && !landed){
	    if(currentFrame > 0){
	        state_change(states.recovery);
	    }else{
	        state_reset();  
	    }
	}



}
