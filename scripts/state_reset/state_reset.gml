function state_reset() {
	//reset state back to normal/default state
	if(onGround) {
		currentState = states.ground;
	}else {
		currentState = states.air;
	}
	frame_reset();
}