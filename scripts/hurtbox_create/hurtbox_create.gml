/// @description hurtbox_create(xOffset, yOffset, xScale, yScale);
/// @function hurtbox_create
/// @param xOffset
/// @param  yOffset
/// @param  xScale
/// @param  yScale
function hurtbox_create(argument0, argument1, argument2, argument3) {

	//create the hurtbox object, assign the owner to the creator, set offset and scale
	argument0 *=  facing;
	_hurtbox = instance_create(x + argument0, y + argument1, oHurtbox);
	_hurtbox.owner = id;
	_hurtbox.xOffset = argument0;
	_hurtbox.yOffset = argument1;
	_hurtbox.xScale  = argument2;
	_hurtbox.yScale  = argument3;

	return _hurtbox;
}
