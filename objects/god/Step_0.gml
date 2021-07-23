/// @description debug
window_set_caption(string(fps));

if keyboard_check_pressed(192)
   {
   if window_get_fullscreen()
      {
      window_set_fullscreen(false);
      }
   else
      {
      window_set_fullscreen(true);
      }
   }

if(instPlayer1.start || instPlayer2.start){
    game_pause();
}

if(instPlayer1.select || instPlayer2.select){
    game_restart();
}

//show boxes
if(keyboard_check_pressed(vk_rcontrol)){
    showBox = !showBox;
}

//if(instance_exists(instPlayer1) && instance_exists(instPlayer2)){
//	player[0] = instPlayer1;
//	player[1] = instPlayer2;
//}