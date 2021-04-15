// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_pause(){
	if(pause) {
		god.gameSpeed = 1;
	} else {
		god.gameSpeed = 0;
	}
	pause = !pause;
	
}