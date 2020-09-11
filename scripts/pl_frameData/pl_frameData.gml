function pl_frameData() {
	//master list of frame data
	fd_master = ds_list_create();

	//create and store frame data in lists, which are then stored in the master list.

	//movement
	fd_pl_idle     = frame_factory(1);
	fd_pl_run      = frame_factory(4,4,4,4,4);
	fd_pl_jump     = frame_factory(1);
	fd_pl_roll     = frame_factory(1);
	fd_pl_hit      = frame_factory(1);
	fd_pl_tumble   = frame_factory(1);
	fd_pl_dead     = frame_factory(1);
	fd_pl_recovery = frame_factory(1);

	//weapon data
	//sword
	fd_sword_side = frame_factory(5,6,12);
	fd_sword_up   = frame_factory(5,6,12);
	fd_sword_down = frame_factory(5,6,12);

	//dagger
	fd_dagger_side = frame_factory(2,5,10);
	fd_dagger_up   = frame_factory(2,5,10);
	fd_dagger_down = frame_factory(2,5,10);

	//axe
	fd_axe_side = frame_factory(6,6,14);
	fd_axe_up   = frame_factory(6,6,14);
	fd_axe_down = frame_factory(6,6,14);

	//spear
	fd_spear_side = frame_factory(5,6,18);
	fd_spear_up   = frame_factory(5,6,18);
	fd_spear_down = frame_factory(5,6,18);



}
