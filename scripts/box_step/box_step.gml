function box_step() {
	//change image scale based on xScale and yScale
	//this ensures the sprite mask matches the scale set by the player
	image_xscale = xScale;
	image_yscale = yScale;

	//show boxes for debug purposes
	if(god.showBox){
	    visible = true;
	}else{
	    visible = false;
	}



}
