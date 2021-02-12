function oldweaponcode() {
	//set sprites and frame data based on current weapon
		//weapon data
	//sword
	fd_sword_side = frame_factory(5,6,12);
	fd_sword_up   = frame_factory(5,6,12);
	fd_sword_down = frame_factory(5,6,12);

	//dagger
	fd_dagger_side = frame_factory(2,5,10);
	fd_dagger_up   = frame_factory(2,5,10);
	fd_dagger_down = frame_factory(2,5,10);

	//axe
	fd_axe_side = frame_factory(6,6,14);
	fd_axe_up   = frame_factory(6,6,14);
	fd_axe_down = frame_factory(6,6,14);

	//spear
	fd_spear_side = frame_factory(5,6,18);
	fd_spear_up   = frame_factory(5,6,18);
	fd_spear_down = frame_factory(5,6,18);
	
	switch(weapon){
	    //sword
	    case weapons.sword:
	        canCharge = false;
	        idleSprite   = sprPlayer_Idle_Base;
	        weaponIdle   = sprSword_Idle;
	        weaponRun    = sprSword_Run;
	        weaponJump   = sprSword_Jump;
	        weaponSprite = sprSword_Idle;
	        sideSpriteG  = sprSword_Attack_Side_G;
	        sideSpriteA  = sprSword_Attack_Side_A;
	        upSpriteG    = sprSword_Attack_Up_G;
	        upSpriteA    = sprSword_Attack_Up_A;
	        downSpriteG  = sprSword_Attack_Down_G;
	        downSpriteA  = sprSword_Attack_Down_A;
	        fd_side      = fd_sword_side;
	        fd_up        = fd_sword_up;
	        fd_down      = fd_sword_down;
	    break;
    
	    //dagger
	    case weapons.dagger:
	        canCharge = false;
	        idleSprite   = sprDagger_Idle;
	        weaponIdle   = sprDagger_Idle;
	        weaponRun    = sprDagger_Run;
	        weaponJump   = sprDagger_Jump;
	        weaponSprite = sprDagger_Idle;
	        sideSpriteG  = sprDagger_Attack_Side_G;
	        sideSpriteA  = sprDagger_Attack_Side_A;
	        upSpriteG    = sprDagger_Attack_Up_G;
	        upSpriteA    = sprDagger_Attack_Up_A;
	        downSpriteG  = sprDagger_Attack_Down_G;
	        downSpriteA  = sprDagger_Attack_Down_A;
	        fd_side      = fd_dagger_side;
	        fd_up        = fd_dagger_up;
	        fd_down      = fd_dagger_down;
	    break;
    
	    //axe
	    case weapons.axe:
	        canCharge = false;
	        idleSprite   = sprAxe_Idle;
	        weaponIdle   = sprAxe_Idle;
	        weaponRun    = sprAxe_Run;
	        weaponJump   = sprAxe_Jump;
	        weaponSprite = sprAxe_Idle;
	        sideSpriteG  = sprAxe_Attack_Side_G;
	        sideSpriteA  = sprAxe_Attack_Side_A;
	        upSpriteG    = sprAxe_Attack_Up_G;
	        upSpriteA    = sprAxe_Attack_Up_A;
	        downSpriteG  = sprAxe_Attack_Down_G;
	        downSpriteA  = sprAxe_Attack_Down_A;
	        fd_side      = fd_axe_side;
	        fd_up        = fd_axe_up;
	        fd_down      = fd_axe_down;
	    break;
    
	    //spear
	    case weapons.spear:
	        canCharge = false;
	        idleSprite   = sprSpear_Idle;
	        weaponIdle   = sprSpear_Idle;
	        weaponRun    = sprSpear_Run;
	        weaponJump   = sprSpear_Jump;
	        weaponSprite = sprSpear_Idle;
	        sideSpriteG  = sprSpear_Attack_Side_G;
	        sideSpriteA  = sprSpear_Attack_Side_A;
	        upSpriteG    = sprSpear_Attack_Up_G;
	        upSpriteA    = sprSpear_Attack_Up_A;
	        downSpriteG  = sprSpear_Attack_Down_G;
	        downSpriteA  = sprSpear_Attack_Down_A;
	        fd_side      = fd_spear_side;
	        fd_up        = fd_spear_up;
	        fd_down      = fd_spear_down;
	    break;
	}



}
