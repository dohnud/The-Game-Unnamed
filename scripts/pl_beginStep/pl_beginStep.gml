function pl_beginStep() {
	//inheret code from parent
	event_inherited();

	//check for hitboxes
	hit_check();

	//animation counter
	animation_counter();

	//player buttons
	pl_controller();

	//basic speed control for movement, etc
	speed_control();

	//change weapons
	weapon_stats();



}
