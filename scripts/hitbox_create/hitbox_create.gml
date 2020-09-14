/// @description hitbox_create( xOffset, yOffset, xScale, yScale, duration, xhit, yhit, hit stun, damage);
/// @function hitbox_create
/// @param  xOffset
/// @param  yOffset
/// @param  xScale
/// @param  yScale
/// @param  duration
/// @param  xhit
/// @param  yhit
/// @param  hit stun
/// @param  damage
function hitbox_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, arguement9) {

	//create the hitbox object, assign the owner to the creator, set offset and scale
	_hitbox = instance_create(x + argument0, y + argument1, objHitbox);
	_hitbox.owner = id;
	_hitbox.xOffset = argument0;
	_hitbox.yOffset = argument1;
	_hitbox.xScale  = argument2;
	_hitbox.yScale  = argument3;

	//the rest of the stats an attack needs
	_hitbox.dur     = argument4; //number of frames the hitbox is active
	_hitbox.xHit    = argument5; //horizontal knock back
	_hitbox.yHit    = argument6; //vertical knock back
	_hitbox.hitStun = argument7; //hit stun duration
	_hitbox.damage  = argument8; //damage dealt
	_hitbox.blockdamage = arguement9;

	hitbox = _hitbox;



}
