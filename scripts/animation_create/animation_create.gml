function animation_create() {
	//animation
	sprite = sprite_index; //current sprite to be drawn
	idleSprite = sprite_index; //default idle sprite
	frameSpeed    = 1; //animation speed
	frameCounter  = 0; //counts frame duration
	currentFrame  = 0; //current frame being displayed
	frameDuration = 0; //time to display each sprite frame
	maxFrames     = 0; //total number of frames in current sprite
	frameData     = 0; //frame data list 
	angle         = 0; //angle of sprite

	xPos = x; //x position of sprite
	yPos = y; //y position of sprite

	xScale = 1; //x scale of sprite
	yScale = 1; //y scale of sprite

	currentSprite = sprite;
	lastSprite = currentSprite;

	//effects
	landed = false; //used to determine when player lands on the ground after being in the air
}
