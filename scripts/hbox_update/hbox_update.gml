function hbox_update() {
	//updates coordiates of hurtboxes and hitboxes based on offset from x / y sprite origins
	with(collision){
	    x = owner.x + xOffset;
	    y = owner.y + yOffset;
	}
	
	with(hurtbox){
	    x = owner.x + xOffset;
	    y = owner.y + yOffset;
	}

	if(hitbox != -1){
	    with(hitbox){
	        x = owner.x + xOffset;
	        y = owner.y + yOffset;    
	    }
	}



}
