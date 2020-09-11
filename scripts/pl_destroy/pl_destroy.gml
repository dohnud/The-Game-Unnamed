function pl_destroy() {
	if(!destroy)exit;
	instance_destroy();
	//loop through our list of frame data lists BACKWARDS
	//destroy each list of frame data, and then delete the position from the master list
	for(i = ds_list_size(fd_master) - 1; i >= 0; i --){
	    target = ds_list_find_value(fd_master,i);
	    ds_list_destroy(target);
	    ds_list_delete(fd_master,i);
	}

	//delete master list when it is empty
	if(ds_list_size(fd_master) == 0){
	    ds_list_destroy(fd_master);
	}



}
