function enum_init() {
	//initialize states, attacks, and weapons.

	enum states {
	    ground,
		dash,
		run,
	    backdash,
		
		air,		
		airdash,
		
		prejump,
		
		attack,
	    dodge,
	    block,
	    tumble,
	    dead,
	    recovery
	}

	enum attacks {
	    side_ground,
	    side_air,
	    up_ground,
	    up_air,
	    down_ground,
	    down_air
	}

	enum weapons {
	    sword,
	    dagger,
	    spear,
	    axe
	}



}
