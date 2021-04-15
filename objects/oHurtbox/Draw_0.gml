/// @description draw hurtbox
if(block = 3) {
	draw_sprite_ext(owner.currentSprite,0,x,y,owner.facing,1,0,c_teal,0.5)
} else if(block = 2) {
	draw_sprite_ext(owner.currentSprite,0,x,y,owner.facing,1,0,c_aqua,0.5)
} else if(block = 1) {
	draw_sprite_ext(owner.currentSprite,0,x,y,owner.facing,1,0,c_blue,0.5)
} else {
	draw_sprite_ext(owner.currentSprite,0,x,y,owner.facing,1,0,c_green,0.5)
}


