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
			
			
			L = keyboard_check(ord("T"));
			M = keyboard_check(ord("Y"));
			H = keyboard_check(ord("U"));
			S = keyboard_check(ord("G"));
			T = keyboard_check(ord("H"));
			A1 = keyboard_check(ord("I"));
			A2 = keyboard_check(ord("K"));
			MC = keyboard_check(ord("J"));
		
		}else {
			start  = gamepad_button_check_pressed(pad_num, gp_start);
			select = gamepad_button_check_pressed(pad_num, gp_select);
			
		    north = gamepad_button_check(pad_num, gp_padu);
			south = gamepad_button_check(pad_num, gp_padd);
			east  = gamepad_button_check(pad_num, gp_padr);
			west  = gamepad_button_check(pad_num, gp_padl);
			
			L = gamepad_button_check(pad_num, gp_face3);
			M = gamepad_button_check(pad_num, gp_face4);
			H = gamepad_button_check(pad_num, gp_shoulderr);
			S = gamepad_button_check(pad_num, gp_face1);
			T = gamepad_button_check(pad_num, gp_face2);
			A1 = gamepad_button_check(pad_num, gp_shoulderrb);
		}
	}else {
		if(pad_num = -1) {
			start  = keyboard_check_pressed(vk_enter);
			select = keyboard_check_direct(vk_rshift);
			
			north = keyboard_check(vk_down);
			south = keyboard_check(vk_semicolon);
			east  = keyboard_check(vk_apostrophe);
			west  = keyboard_check(ord("L"));
			
			
			L = keyboard_check(vk_numpad4);
			M = keyboard_check(vk_numpad5);
			H = keyboard_check(vk_numpad6);
			S = keyboard_check(vk_numpad1);
			T = keyboard_check(vk_numpad2);
			A1 = keyboard_check(vk_numpad3);
		
		}else {
			start  = gamepad_button_check_pressed(pad_num, gp_start);
			select = gamepad_button_check_pressed(pad_num, gp_select);
			
		    north = gamepad_button_check(pad_num, gp_padu);
			south = gamepad_button_check(pad_num, gp_padd);
			east  = gamepad_button_check(pad_num, gp_padr);
			west  = gamepad_button_check(pad_num, gp_padl);
			
			L = gamepad_button_check(pad_num, gp_face3);
			M = gamepad_button_check(pad_num, gp_face4);
			H = gamepad_button_check(pad_num, gp_shoulderr);
			S = gamepad_button_check(pad_num, gp_face1);
			T = gamepad_button_check(pad_num, gp_face2);
			A1 = gamepad_button_check(pad_num, gp_shoulderrb);
		}
	}
	
	trackDirections();
	trackButtons();
	trackMotions();
}
