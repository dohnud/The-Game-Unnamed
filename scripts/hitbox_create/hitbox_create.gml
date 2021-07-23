/// @description hitbox_create();
/// @function hitbox_create
function hitbox_create() {
	var move = ds_list_find_value(ad_master, 0);
	//create the hitbox object, assign the owner to the creator, set offset and scale
	_hitbox = instance_create(x, y, oHitbox);
	_hitbox.owner = id;
	object_set_sprite(_hitbox, ds_list_find_value(move, 0));
	_hitbox.xOffset = 0;
	_hitbox.yOffset = 0;
	_hitbox.xScale  = 1;
	_hitbox.yScale  = 1;
	
	//the rest of the stats an attack needs
	_hitbox.damage    = ds_list_find_value(move, 2); //damage
	_hitbox.dur       = ds_list_find_value(move, 3); //active
	_hitbox.hitStun   = ds_list_find_value(move, 4); //hitstun
	_hitbox.hitStop   = ds_list_find_value(move, 5); //hitstun 
	_hitbox.xHit      = ds_list_find_value(move, 6); //horizontal knockback
	_hitbox.yHit      = ds_list_find_value(move, 7); //vertical knockback
	_hitbox.blockStun = ds_list_find_value(move, 8); //blockstun
	
	if(ds_list_find_value(move, 9) = 0) {
		_hitbox.blockdamage = 0;                     //normal chip
	} else if(ds_list_find_value(move, 9) = 1) {
		_hitbox.blockdamage = _hitbox.damage/10;     //special chip
	} else {
		_hitbox.blockdamage = _hitbox.damage/5;      //super chip
	}
		

	hitbox = _hitbox;
}
