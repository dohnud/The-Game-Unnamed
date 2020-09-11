function hitbox_destroy() {
	if(!destroy)exit;

	instance_destroy();

	//loop through our list ignore targets, clear it, and delete the list
	for(i = ds_list_size(ignoreList) - 1; i >= 0; i --){
	    target = ds_list_find_value(ignoreList,i);
	    ds_list_delete(ignoreList,i);
	}

	//delete ignore list when it is empty
	if(ds_list_size(ignoreList) == 0){
	    ds_list_destroy(ignoreList);
	}

	//reset owner hitbox variable
	owner.hitbox = -1;



}
