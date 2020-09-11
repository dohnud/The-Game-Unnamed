function pl_draw() {
	//draw sprites. body is drawn first and the weapons are drawn over the body
	//body
	draw_sprite_ext(sprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_white,1);

	//weapon
	draw_sprite_ext(weaponSprite,currentFrame,xPos,yPos,xScale * facing,yScale,angle,c_white,1);



}
