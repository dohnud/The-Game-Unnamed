 function pl_prejumpState(){
	animation_counter()
	
	ySpeed = 0
	xSpeed = 0
	
	if(dir7) {
		jumpBack = true;
		jumpForward = false;
	}else if(dir9) {
		jumpBack = false;
		jumpForward = true;
	}else {
		jumpBack = false;
		jumpForward = false;
	}
	
	if(animEnd) {
		state_change(states.air);
				
		if(dir7 || dir8 || dir9) {
			motHop = false
		} else {
			motHop = true
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
	}
}