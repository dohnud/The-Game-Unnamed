function actJump(){
	animation_set(fdDefaultPrejump,plDefaultCrouch)
	actAutocorrect();
	
	if(onGround) {
		doublejumped = false;
	}else {
	doublejumped = true;
	}
	
	state_change(states.prejump);
}
