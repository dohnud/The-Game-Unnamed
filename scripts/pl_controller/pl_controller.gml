function pl_controller() {
	if(player == 0){
		forwardHold = forward;
		backHold  = back;
	    upHold    = up;
	    downHold  = down;
		attackHold = attack;

		if(keyboard_check(ord("D")) && keyboard_check(ord("A"))){
			forward = false;
			back = false;
		}else {
			if(facing = 1){
				forward = keyboard_check(ord("D"));
				back = keyboard_check(ord("A"));
			}else {
				forward  = keyboard_check(ord("A"));
				back = keyboard_check(ord("D"));
			}
		}
		
		if(keyboard_check(vk_space)){
			up = true;
			down = false;
		}else {
			up = false;
			down = keyboard_check(ord("S"));
		}	
		attack = keyboard_check(ord("G"));
	}
	trackDirections();	
}
