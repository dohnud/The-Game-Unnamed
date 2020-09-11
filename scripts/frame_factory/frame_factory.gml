/// @description frame_factory(1,1,1...);
/// @function frame_factory
/// @param 1
/// @param 1
/// @param 1...
function frame_factory() {
	//set frame data per animation
	var _list = ds_list_create();

	for(i = argument_count - 1; i >= 0; i --){
	    _list[|i] = argument[i];
	}

	ds_list_add(fd_master,_list);

	return _list;



}
