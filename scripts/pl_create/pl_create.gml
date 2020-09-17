function pl_create() {
	//inherit from parent object
	event_inherited();

	landed = 0;

	player = 0;

	p1_inst = inst_BB20ECC3;
	p2_inst = inst_84FA69E9;

	//buttons
	forward = false;
	back = false;
	up    = false;
	down  = false;

	forwardHold = forward;
	backHold = back;
	upHold    = up;
	downHold  = down;

	dir1 = false;
	dir2 = false;
	dir3 = false;
	dir4 = false;
	dir5 = false;
	dir6 = false;
	dir7 = false;
	dir8 = false;
	dir9 = false;
	
	dir1tap = [false];
	dir2tap = [false];
	dir3tap = [false];
	dir4tap = [false];
	
	dir6tap = [false];
	dir7tap = [false];
	dir8tap = [false];
	dir9tap = [false];
	
	dir1hold = false;
	dir2hold = false;
	dir3hold = false;
	dir4hold = false;
	
	dir6hold = false;
	dir7hold = false;
	dir8hold = false;
	dir9hold = false;
	
	
	dir1last = [60, 60];
	dir2last = [60, 60];
	dir3last = [60, 60];
	dir4last = [60, 60];
	dir5last = [60, 60];
	dir6last = [60, 60];
	dir7last = [60, 60];
	dir8last = [60, 60];
	dir9last = [60, 60];
	
	dir1taplast = [60, 60];
	dir2taplast = [60, 60];
	dir3taplast = [60, 60];
	dir4taplast = [60, 60];
	
	dir6taplast = [60, 60];
	dir7taplast = [60, 60];
	dir8taplast = [60, 60];
	dir9taplast = [60, 60];
	
	
	
	dtBack = 0;
	dtForward = 0;
	dtDown = 0;
		
	doublejumped = false

	attack = false;
	attackHold = false;
	
	mash = false;
	superJump = false;
	prejump = 0;
	jumpLockout = 0;

	//states
	currentState = states.ground;
	lastState    = currentState;
	subState     = states.ground;

	//movement
	mSpeed = 1;
	mSpeedDefault = mSpeed;
	rSpeed = 1.5;
	aSpeed = 1.25;
	aSpeedDefault = aSpeed;
	cSpeed = 1;
	tSpeed = 3;
	jPower = -6;
	facing = 1;

	gSpeedDefault = gSpeed;

	dashDur = 0;
	dashDurMax = 20;
	recoverDur = 20;

	airdashed = false;

	//fighting
	//hit and hurtboxes
	hbox_init();

	hpMax = 100;
	hp    = hpMax;

	stunDur = 0;
	knockBack = false;

	//attack
	attackType = attacks.side_ground;

	//hit
	hit = false;
	hitBy = -1;

	//frame data
	pl_frameData();

	//draw
	animation_create();

	//weapons
	weapon = weapons.sword;
	weapon_stats();

	//destroy
	destroy = false;



}
