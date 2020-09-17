function speed_control() {
	//super jump
//	if(superJump){
//	    if(!onGround){
//	        aSpeed = 0;
//	    }else{
//	        aSpeed = aSpeedDefault;
//	        superJump = false;
//	    }
//	}

	//knock back
	if(knockBack){
	    if(!onGround){
	        aSpeed = 0;
	    }else{
	        aSpeed = aSpeedDefault;
	        knockBack = false;
	    }
	}

	//terminal speed
	if(ySpeed  >= tSpeed){
	    ySpeed = tSpeed;
	}   

	//air accel
//	if(!onGround){
//	    aSpeed = aSpeedDefault * 0.25;
//	}else{
//	    aSpeed = aSpeedDefault;
//	}



}
