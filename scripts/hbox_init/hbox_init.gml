function hbox_init() {
	//initialize a bunch of box info
	hurtbox = hurtbox_create(0,0,1,1); //create and store hurtbox
	collision = collision_create(8,18); //create and store collision box
	reference = reference_create();
	
	hitbox  = -1; //default hitbox variable
	damage  = 0; //damage dealt
	dur     = 0; //number of frames the hitbox is active
	hitStun = 0; //hit stun duration
	hitStop = 0;
	xHit    = 0; //horizontal knock back
	yHit    = 0; //vertical knock back
	blockStun = 0;
	blockdamage = 0; //damaget o blocking player
	
	invincible = 0; //0 = none, 1 = strike, 2 = throw, 4 = full, 5 = projectile
}