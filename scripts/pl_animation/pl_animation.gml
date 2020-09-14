function pl_animation() {
	//x and y position of the sprite
	xPos = x;
	yPos = y;

	//make sure x and y scale is always trying to reset to 1
	xScale = approach(xScale,1,0.05);
	yScale = approach(yScale,1,0.05);

	//store current sprite information
	currentSprite = sprite;

	//landing squish
	if(onGround){
	    if(!landed){
	        squash_stretch(1.3,0.7);
	        landed = true;
	    }
	}else{
	    landed = false;
	}

	//change sprites and animations based on current state
	switch(currentState){
	    case states.normal:
	        //grounded movement
	        if(onGround){
	            //idle
	            if(!left && !right){
	                if(down){
	                    //crouch
	                    animation_set(fd_pl_idle,sprPlayer_Recovery_Base);
	                    weaponSprite = sprEmpty;
	                }else{
	                    //body
	                    animation_set(fd_pl_idle,idleSprite);
	                    weaponSprite = weaponIdle;
	                }
	            //run
	            }else{
	                animation_set(fd_pl_run,sprPlayer_Run_Base);
	                weaponSprite = weaponRun;
	            }
	        //in air animation
	        }else{
	            animation_set(fd_pl_jump,sprPlayer_Jump_Base);
	            weaponSprite = weaponJump;
	            //change sprite frame based on vertical speed
	            if(ySpeed < 1){
	                currentFrame = 0;
	            }else{
	                currentFrame = 1;
	            }
	        }
        
	        //change facing direction based on left/right. 
	        //facing flips the sprite to the left and right.
	        if(!player && onGround){
				if (p2_inst.x > xPos) {
					facing = 1
				}
				else if(p2_inst.x < xPos ) {
					facing = -1
				}
	        }else if(player && onGround){
				if (p1_inst.x > xPos){
					facing = 1;
				}
				else if(p1_inst.x < xPos) {
				facing  = -1;
				}
	        }
	    break;
    
	    case states.dash:
	        animation_set(fd_pl_roll,sprPlayer_Dash_Base);
	        weaponSprite = sprEmpty;
	    break;
    
	    case states.dead:
	        animation_set(fd_pl_dead,sprPlayer_Dead_Base);
	        weaponSprite = sprEmpty;        
	    break;
    
	    case states.attack:
	        switch(subState){
	            case attacks.side_ground:
	                animation_set(fd_side,sideSpriteG);
	                weaponSprite = sprEmpty;
	            break;
            
	            case attacks.side_air:
	                animation_set(fd_side,sideSpriteA);
	                weaponSprite = sprEmpty;            
	            break;
            
	            case attacks.up_ground:
	                animation_set(fd_up,upSpriteG);
	                weaponSprite = sprEmpty;            
	            break;
            
	            case attacks.up_air:
	                animation_set(fd_up,upSpriteA);
	                weaponSprite = sprEmpty;            
	            break;
            
	            case attacks.down_ground:
	                animation_set(fd_down,downSpriteG);
	                weaponSprite = sprEmpty;            
	            break;
            
	            case attacks.down_air:
	                animation_set(fd_down,downSpriteA);
	                weaponSprite = sprEmpty;            
	            break;
	        }
	    break;
    
	    case states.recovery:
	        animation_set(fd_pl_recovery,sprPlayer_Recovery_Base);
	        weaponSprite = sprEmpty;
	    break;
    
	    case states.tumble:
	        //draw hit sprite during hit stop
	        if(objGod.freeze){
	            animation_set(fd_pl_tumble,sprPlayer_Hit_Base);
	            weaponSprite = sprEmpty;               
	        }else{
	            //laying down on the ground after being hit
	            if(onGround){
	                animation_set(fd_pl_tumble,sprPlayer_Dead_Base);
	                weaponSprite = sprEmpty;  
	            //flying through the air after being hit      
	            }else{
	                animation_set(fd_pl_dead,sprPlayer_Tumble_Base);
	                weaponSprite = sprEmpty;        
	            }
	        }
	    break;
	}

	//reset animation counters if sprite changes
	if(lastSprite != currentSprite){
	    frame_reset();
	    lastSprite = currentSprite;
	}



}
