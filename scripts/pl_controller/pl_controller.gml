function pl_controller() {
	#macro vk_semicolon 186
	#macro vk_apostrophe 222
	if(player == 0) {
		if(pad_num = -1) {
			start  = keyboard_check_pressed(vk_escape);
			select = keyboard_check_pressed(vk_tab);
			
			north = keyboard_check(vk_space);
			south = keyboard_check(ord("S"));
			east  = keyboard_check(ord("D"));
			west  = keyboard_check(ord("A"));
			
			
			lp = keyboard_check(ord("T"));
			mp = keyboard_check(ord("Y"));
			hp = keyboard_check(ord("U"));
			lk = keyboard_check(ord("G"));
			mk = keyboard_check(ord("H"));
			hk = keyboard_check(ord("J"));
		
		}else {
			start  = gamepad_button_check_pressed(pad_num, gp_start);
			select = gamepad_button_check_pressed(pad_num, gp_select);
			
		    north = gamepad_button_check(pad_num, gp_padu);
			south = gamepad_button_check(pad_num, gp_padd);
			east  = gamepad_button_check(pad_num, gp_padr);
			west  = gamepad_button_check(pad_num, gp_padl);
			
			lp = gamepad_button_check(pad_num, gp_face3);
			mp = gamepad_button_check(pad_num, gp_face4);
			hp = gamepad_button_check(pad_num, gp_shoulderr);
			lk = gamepad_button_check(pad_num, gp_face1);
			mk = gamepad_button_check(pad_num, gp_face2);
			hk = gamepad_button_check(pad_num, gp_shoulderrb);
		}
	}else {
		if(pad_num = -1) {
			start  = keyboard_check_pressed(vk_enter);
			select = keyboard_check_direct(vk_rshift);
			
			north = keyboard_check(vk_down);
			south = keyboard_check(vk_semicolon);
			east  = keyboard_check(vk_apostrophe);
			west  = keyboard_check(ord("L"));
			
			
			lp = keyboard_check(vk_numpad4);
			mp = keyboard_check(vk_numpad5);
			hp = keyboard_check(vk_numpad6);
			lk = keyboard_check(vk_numpad1);
			mk = keyboard_check(vk_numpad2);
			hk = keyboard_check(vk_numpad3);
		
		}else {
			start  = gamepad_button_check_pressed(pad_num, gp_start);
			select = gamepad_button_check_pressed(pad_num, gp_select);
			
		    north = gamepad_button_check(pad_num, gp_padu);
			south = gamepad_button_check(pad_num, gp_padd);
			east  = gamepad_button_check(pad_num, gp_padr);
			west  = gamepad_button_check(pad_num, gp_padl);
			
			lp = gamepad_button_check(pad_num, gp_face3);
			mp = gamepad_button_check(pad_num, gp_face4);
			hp = gamepad_button_check(pad_num, gp_shoulderr);
			lk = gamepad_button_check(pad_num, gp_face1);
			mk = gamepad_button_check(pad_num, gp_face2);
			hk = gamepad_button_check(pad_num, gp_shoulderrb);
		}
	}
	
	trackDirections();
	trackButtons();
	trackMotions();
}
