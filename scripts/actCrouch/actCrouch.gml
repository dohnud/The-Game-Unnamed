function actCrouch() {
	animation_set(fdDefaultCrouch,plDefaultCrouch)
	xSpeed = approach(xSpeed,0,0.5 * god.gameSpeed);
}
