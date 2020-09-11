function pl_controller() {
	//player button inputs

	if(player == 0){
	    leftHold  = left;
	    rightHold = right;
	    upHold    = up;
	    downHold  = down;
    
	    left  = keyboard_check(vk_left);
	    right = keyboard_check(vk_right);
	    up    = keyboard_check(vk_up);
	    down  = keyboard_check(vk_down);
    
	    jumpHold = jump;
	    jump = keyboard_check(ord("Z"));
    
	    attackHold = attack;
	    attack = keyboard_check(ord("X"));
    
	    dashHold = dash;
	    dash = keyboard_check(ord("C"));
    
	    itemHold = item;
	    item = keyboard_check(ord("W"));
	}



}
