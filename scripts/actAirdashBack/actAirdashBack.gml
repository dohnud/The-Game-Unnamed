function actAirdashBack() {
	frame_reset();
	animation_set(fdDefaultDash,plDefaultDash);
	xSpeed = -2.5 * facing;
	airdashed = true;
	state_change(states.airdash);
}