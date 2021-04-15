/// @description hurtbox_create(xOffset, yOffset, xScale, yScale);
/// @function hurtbox_create
/// @param xOffset
/// @param  yOffset
/// @param  xScale
/// @param  yScale
function collision_create(argument0, argument1) {

	//create the hurtbox object, assign the owner to the creator, set offset and scale
	_collision = instance_create(x, y, oCollision);
	_collision.owner = id;
	_collision.xOffset = 0;
	_collision.yOffset = 0;
	_collision.xScale  = 8;
	_collision.yScale  = 18;
	
	_collision.back  = x-(4*facing);
	_collision.front = x+(4*facing);

	return _collision;
}
