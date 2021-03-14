function hbox_init() {
	//initialize a bunch of box info
	hurtbox = hurtbox_create(0,0,1,1); //create and store hurtbox
	collision = collision_create(0,0,8,22); //create and store collision box
	hitbox  = -1; //default hitbox variable

	dur     = 0; //number of frames the hitbox is active
	xHit    = 0; //horizontal knock back
	yHit    = 0; //vertical knock back
	hitStun = 0; //hit stun duration
	damage  = 0; //damage dealt
	blockdamage = 0; //damaget o blocking player
	invincible = false; //what it sounds like



}
