draw_sprite(sprHud, image_index, 480, 0)



draw_text(0, 60, string(instPlayer1.frameCounter));
draw_text(0, 90, string(instPlayer1.currentState));
draw_text(0, 120, string(instPlayer1.hurtbox.block));

