var target_x = round(mean(instPlayer1.x,instPlayer2.x))
var target_y = round(mean(instPlayer1.y,instPlayer2.y))

draw_text(0, 0, string(target_x));
draw_text(0, 30, string(target_y));

draw_text(0, 60, string(instPlayer1.frameCounter));
draw_text(0, 90, string(instPlayer1.currentState));
draw_text(0, 120, string(seperation));
draw_text(0, 150, string(camera_get_view_width(view_camera[0])));