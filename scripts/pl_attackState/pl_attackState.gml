function pl_attackState() {
	//speed adjustments
	if(onGround){
	    xSpeed = approach(xSpeed,0,aSpeed * god.gameSpeed);
	}
	
	if(frameCounter = 3) {
		hitbox_create();
	}

	//countdown hitbox duration if active
	if(dur > 0){
	    dur -= 1 * god.gameSpeed;
	}else{
	    dur = 0;
	}
}

//ds_list_find_value(ds_list_find_value(fd_master, currentAttack), 0)