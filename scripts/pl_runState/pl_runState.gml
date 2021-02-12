function pl_runState() {
	animation_set(fdDefaultRun,plDefaultRun);
	
	if(dir7 || dir8 || dir9){    
	    actJump();
	}else if(!dir6) {
		state_reset()
	}else {
		xSpeed = facing * rSpeed;
	}
}