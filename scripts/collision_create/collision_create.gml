/// @description hurtbox_create(xOffset, yOffset, xScale, yScale);
/// @function hurtbox_create
/// @param xOffset
/// @param  yOffset
/// @param  xScale
/// @param  yScale
function collision_create(argument0, argument1) {

	//create the hurtbox object, assign the owner to the creator, set offset and scale
	_hurtbox = instance_create(x, y, oCollision);
	_hurtbox.owner = id;
	_hurtbox.xOffset = 0;
	_hurtbox.yOffset = 0;
	_hurtbox.xScale  = argument0;
	_hurtbox.yScale  = argument1;
	
	_hurtbox.collLine = noone;

	return _hurtbox;
}
