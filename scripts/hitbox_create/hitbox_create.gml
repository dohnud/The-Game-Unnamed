/// @description hitbox_create();
/// @function hitbox_create
function hitbox_create() {
	var move = ds_list_find_value(ad_master, currentAttack);
	//create the hitbox object, assign the owner to the creator, set offset and scale
	_hitbox = instance_create(x, y, oHitbox);
	_hitbox.owner = id;
	object_set_sprite(_hitbox, ds_list_find_value(move, 0));
	_hitbox.xOffset = 0;
	_hitbox.yOffset = 0;
	_hitbox.xScale  = 1;
	_hitbox.yScale  = 1;

	//the rest of the stats an attack needs
	_hitbox.dur     = ds_list_find_value(move, 1); //number of frames the hitbox is active
	_hitbox.xHit    = ds_list_find_value(move, 2); //horizontal knock back
	_hitbox.yHit    = ds_list_find_value(move, 3); //vertical knock back
	_hitbox.hitStun = ds_list_find_value(move, 4); //hit stun duration
	_hitbox.damage  = ds_list_find_value(move, 7); //damage dealt
	if(ds_list_find_value(move, 8) = 0) {
		_hitbox.blockdamage = 0;
	} else if(ds_list_find_value(move, 8) = 1) {
		_hitbox.blockdamage = _hitbox.damage/10;
	} else {
		_hitbox.blockdamage = _hitbox.damage/5;
	}
		

	hitbox = _hitbox;



}
