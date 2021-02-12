function spear_attacks() {
	//create hitboxes based on specific frames during the attack
	//and position the hitbox relative to the current attack
	switch(subState){    
	    case attacks.side_ground:
	    case attacks.side_air:
	        if(frame_check(1,0)){
	            hitbox_create(8*facing,-14,20*facing,6,6,4*facing,-2,60,10);
	        }
	    break;
    
	    case attacks.up_ground:
	    case attacks.up_air:
	        if(frame_check(1,0)){
	            hitbox_create(8*facing,-22,20*facing,6,6,3*facing,-4,60,10);
	            hitbox.angle = 45 * facing;
	        }        
	    break;
    
	    case attacks.down_ground:
	    case attacks.down_air:
	        if(frame_check(1,0)){
	            hitbox_create(22*facing,14,20*facing,6,6,4*facing,3,60,10);
	            hitbox.angle = 135 * facing;
	        }  
	    break;
	}



}
