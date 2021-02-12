function pl_frameData() {
	//master list of frame data
	fd_master = ds_list_create();

	//create and store frame data in lists, which are then stored in the master list.	
	//movement
	fdDefaultIdle     = frame_factory(1);
	
	fdDefaultWalk     = frame_factory(5,5,5);
	fdDefaultWalkback = frame_factory(5,5,5);
	
	fdDefaultDash     = frame_factory(1);
	fdDefaultDashback = frame_factory(1);
	
	fdDefaultRun      = frame_factory(4,4,4,4,4);
	
	fdDefaultCrouch   = frame_factory(1);
	fdDefaultJump     = frame_factory(1);
	
	//attacks
	fdDefault5lp   = frame_factory(6,3,10)
	fdDefault2lp   = frame_factory(5,3,12)

}
