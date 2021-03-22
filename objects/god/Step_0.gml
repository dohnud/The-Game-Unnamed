/// @description debug
window_set_caption(string(fps));

if(keyboard_check_pressed(ord("R"))){
    game_restart();
}

if(keyboard_check_pressed(vk_escape)){
    game_end();
}

//show boxes
if(keyboard_check_pressed(vk_rcontrol)){
    showBox = !showBox;
}

if(instance_exists(instPlayer1) && instance_exists(instPlayer2)){
	player[0] = instPlayer1;
	player[1] = instPlayer2;
}