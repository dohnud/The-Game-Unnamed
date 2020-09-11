function axe_attacks() {
	//create hitboxes based on specific frames during the attack
	//and position the hitbox relative to the current weapon and attack
	switch(subState){    
	    case attacks.side_ground:
	    case attacks.side_air:
	        if(frame_check(1,0)){
	            hitbox_create(-4*facing,-24,22*facing,24,6,3*facing,-2,60,10);
	        }
	    break;
    
	    case attacks.up_ground:
	    case attacks.up_air:
	        if(frame_check(1,0)){
	            hitbox_create(-16*facing,-32,32*facing,22,6,2*facing,-4.5,60,10);
	        }        
	    break;
    
	    case attacks.down_ground:
	    case attacks.down_air:
	        if(frame_check(1,0)){
	            hitbox_create(-16*facing,-12,32*facing,20,6,2*facing,3,60,10);
	        }  
	    break;
	}



}
