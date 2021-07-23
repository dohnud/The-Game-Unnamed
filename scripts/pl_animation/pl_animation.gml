function pl_animation() {
	//x and y position of the sprite
	xPos = x;
	yPos = y;

	//make sure x and y scale is always trying to reset to 1
//	xScale = approach(xScale,1,0.05);
//	yScale = approach(yScale,1,0.05);

	//store current sprite information
	currentSprite = sprite;

	//landing
	if(onGround){
	    if(!landed){
	        landed = true;
	    }
	}else{
	    landed = false;
	}

	//reset animation counters if sprite changes
	if(lastSprite != currentSprite){
	    frame_reset();
	    lastSprite = currentSprite;
	}
}