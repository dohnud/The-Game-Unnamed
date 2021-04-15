/// @description hurtbox_create(xOffset, yOffset, xScale, yScale);
/// @function hurtbox_create
/// @param xOffset
/// @param  yOffset
/// @param  xScale
/// @param  yScale
function reference_create() {

	//create the hurtbox object, assign the owner to the creator, set offset and scale
	_reference = instance_create(x, y, oReference);
	_reference.owner = id;
	_reference.xOffset = 0;
	_reference.yOffset = 0;
	_reference.xScale  = 0;
	_reference.yScale  = 0;

	return _reference;
}
