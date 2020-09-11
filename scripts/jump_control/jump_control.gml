function jump_control() {
	//variable jump height
	if(!jump && ySpeed < 0){
	    ySpeed *= 0.75;
	}

	//hangtime
	if(jumpHold && abs(ySpeed) < 1){
	    gSpeed = gSpeedDefault * 0.50;
	}else{
	    gSpeed = gSpeedDefault;
	}



}
