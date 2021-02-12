function actJump(){
	fCounter = 0;
	if(onGround) {
		doublejumped = false
	}else {
	doublejumped = true
	}
	
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
	
	state_change(states.prejump);
}
