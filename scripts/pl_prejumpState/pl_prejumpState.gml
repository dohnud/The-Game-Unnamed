 function pl_prejumpState(){
	fCounter += 1;
	
	if(ySpeed > 0.5) {
		ySpeed = 0.5
	} else if(ySpeed < -0.5) {
		ySpeed = -0.5
	}
	
	if(fCounter = 4) {
		if(dir7 || dir8 || dir9) {
			motHop = false
		} else {
			motHop = true
		}
		
		if(!jumpBack && !jumpForward) {
			if(dir7 || dir4 || dir1) {
				jumpBack = true;
			} else if(dir9 || dir6 || dir3) {
				jumpForward = true;
			}
		}
		
		if(motSuperjump && onGround) {
			if(motHop) {
				ySpeed = jPowerV * 0.8
			} else {
				ySpeed = jPowerV * 1.2
			}
		} else {
			if(motHop) {
				ySpeed = jPowerV * 0.6
			} else {
				ySpeed = jPowerV * 1
			}
		}
		
		if(jumpForward) {
			if(motSuperjump) {
				xSpeed = jPowerH * facing * 1.5;
			} else {
				xSpeed = jPowerH * facing;
			}
		}else if(jumpBack) {
			if(motSuperjump) {
				xSpeed = -jPowerH * facing * 1.5;
			} else {
				xSpeed = -jPowerH * facing;
			}
		}else {
			xSpeed = 0;
		}
		state_change(states.air);
	}
}