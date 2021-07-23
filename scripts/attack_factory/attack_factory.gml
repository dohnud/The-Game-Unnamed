/// @description attack_factory(1,1,1...);
/// @function attack_factory

/// @param  sprite
/// @param  startup
/// @param  damage
/// @param  active
/// @param  hitstun
/// @param  blockstun
/// @param  hitstop
/// @param  xhit
/// @param  yhit
/// @param  move type

function attack_factory(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	//set frame data per animation
	var _list = ds_list_create();

	for(i = argument_count - 1; i >= 0; i --){
	    _list[|i] = argument[i];
	}

	ds_list_add(ad_master,_list);

	return _list;

}
