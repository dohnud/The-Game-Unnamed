function pl_create() {
	//inherit from parent object
	event_inherited();
	
	opponent = noone;
	for (var i=0; i < instance_number(oPlayer); i++) {
		var p_id = instance_find(oPlayer, i);
		if p_id != id {
			opponent = p_id;
		}
	}
	//??
	landed = 0;

	//general
	animEnd = false;
	
	//states
	currentState = states.ground;
	lastState    = currentState;

	//movement
	wSpeed = 1.5;
	wbSpeed = -1;
	rSpeed = 3;
	frctnValue = 2;
	
	jPowerV = -8;
	jPowerH = 2.5;
	aSpeed = 2;
	gSpeed = 1;
	fSpeed = 8;

	facing = 1;
	
	grav = true;

	prejump = 0;
	jumpForward = false;
	jumpBack = false;
	
	recoverDur = 0;

	airdashed = false;
	doublejumped = false;
	
	//directions
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
		
	//buttons
	atkLP = false;
	atkMP = false;
	atkHP = false;
	atkLK = false;
	atkMK = false;
	atkHK = false;
	
	atkLPhold = false;
	atkMPhold = false;
	atkHPhold = false;
	atkLKhold = false;
	atkMKhold = false;
	atkHKhold = false;
	
	atkLPtap = false;
	atkMPtap = false;
	atkHPtap = false;
	atkLKtap = false;
	atkMKtap = false;
	atkHKtap = false;
	
	//motions
	motDash = false;
	motBackash = false;
	motSuperjump = false;
	motHop = false;

	//other
	hpMax = 1000;
	hp    = hpMax;

	stunDur = 0;
	knockBack = false;

	//hit
	hit = false;
	hitBy = -1;

	//hit and hurtboxes
	hbox_init();
	
	//frame data
	pl_frameData();

	//draw
	animation_create();

	//destroy
	destroy = false;
}
