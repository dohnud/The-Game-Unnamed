function actJump(){
	prejump = 4;
	jumpLockout = 5;
	if(onGround) {
		doublejumped = false
	}
	else {
	doublejumped = true
	}
	currentState = states.prejump();

}
