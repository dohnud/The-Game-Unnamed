function pl_attackState() {
	//speed adjustments
	if(onGround){
	    xSpeed = approach(xSpeed,0,aSpeed * objGod.gameSpeed);
	}else{
	    xSpeed = approach(xSpeed,0,0.1 * objGod.gameSpeed);
	}

	//code for each weapon type, and each attack for that weapon
	switch(weapon){    
	    case weapons.sword:
	        sword_attacks();
	    break;
    
	    case weapons.dagger:
	        dagger_attacks();
	    break;
    
	    case weapons.spear:
	        spear_attacks();
	    break;
    
	    case weapons.axe:
	        axe_attacks();
	    break;
	}

	//landing recovery
	recovery_set();

	//countdown hitbox duration if active
	if(dur > 0){
	    dur -= 1 * objGod.gameSpeed;
	}else{
	    dur = 0;
	}

	//reset to normal state when the attack animation ends
	if(animation_end()){
	    state_reset();  
	}



}
