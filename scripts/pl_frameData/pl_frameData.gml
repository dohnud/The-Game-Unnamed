function pl_frameData() {
	//master list of frame data
	fd_master = ds_list_create();
	ad_master = ds_list_create();

	//create and store frame data in lists, which are then stored in the master list.	
	//attacks
	fdDefaultsLP   = frame_factory(6,3,10)
	fdDefaultcLP   = frame_factory(5,3,12)
	
	//movement
	fdDefaultIdle     = frame_factory(1);
	fdDefaultCrouch   = frame_factory(1);
	fdDefaultJump     = frame_factory(1);
	fdDefaultWalk     = frame_factory(5,5,5);
	fdDefaultWalkback = frame_factory(7,7,7);
	
	fdDefaultDash     = frame_factory(20);
	fdDefaultDashback = frame_factory(20);
	fdDefaultAirdash  = frame_factory(20);		
	fdDefaultRun      = frame_factory(4,4,4,4,4);
	
	fdDefaultPrejump  = frame_factory(5);
	


	adDefaultsLP   = attack_factory(plDefaultsLPbox, 3, 1, 1, 18, 13, 7, 1, 0)
}