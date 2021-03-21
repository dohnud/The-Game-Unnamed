function pl_attackState() {
	animation_counter()
	//speed adjustments
	if(onGround){
	    xSpeed = approach(xSpeed,0,aSpeed * god.gameSpeed);
	}

	////countdown hitbox duration if active
	//if(dur > 0){
	//    dur -= 1 * god.gameSpeed;
	//}else{
	//    dur = 0;
	//}
}