/// @function DrawNineSliceSprite(sprite, x1, y1, x2, y2);
/// @description
/// @arg sprite
/// @arg x1 top left - x 
/// @arg y1 top left - y 
/// @arg x2 bottom right - x
/// @arg y2 bottom right - y
function DrawNineSliceSprite(argument0, argument1, argument2, argument3, argument4) {

	var sSprite = argument0

	var xPos1 = argument1;
	var yPos1 = argument2;
	var xPos2 = argument3;
	var yPos2 = argument4;

	var sizeDiv3 = sprite_get_width(sSprite) / 3;
	var width = xPos2 - xPos1;
	var height = yPos2 - yPos1;

	// Main
	draw_sprite_part_ext(sSprite, 0, sizeDiv3, sizeDiv3, 1, 1, xPos1+sizeDiv3, yPos1+sizeDiv3, width-(sizeDiv3*2), height-(sizeDiv3*2), c_white,1);
	// Corners
	var rWidth = xPos1+width-sizeDiv3;
	var bHeight =  yPos1+height-sizeDiv3;
	draw_sprite_part(sSprite, 0, 0, 0, sizeDiv3, sizeDiv3, xPos1, yPos1);
	draw_sprite_part(sSprite, 0, sizeDiv3*2, 0, sizeDiv3, sizeDiv3, rWidth, yPos1);
	draw_sprite_part(sSprite, 0, 0, sizeDiv3*2, sizeDiv3, sizeDiv3, xPos1, bHeight);
	draw_sprite_part(sSprite, 0, sizeDiv3*2, sizeDiv3*2, sizeDiv3, sizeDiv3, rWidth, bHeight);
	// Sides
	var horzH = height-(sizeDiv3*2);
	var vertW = width-(sizeDiv3*2);
	draw_sprite_part_ext(sSprite, 0, 0, sizeDiv3, sizeDiv3, 1, xPos1, yPos1+sizeDiv3, 1, horzH, c_white,1);
	draw_sprite_part_ext(sSprite, 0, sizeDiv3*2, sizeDiv3, sizeDiv3, 1, xPos1+width-sizeDiv3, yPos1+sizeDiv3 , 1, horzH, c_white, 1);
	draw_sprite_part_ext(sSprite, 0, sizeDiv3, 0, 1, sizeDiv3, xPos1+sizeDiv3, yPos1, vertW, 1, c_white,1);
	draw_sprite_part_ext(sSprite, 0, sizeDiv3, sizeDiv3*2, 1, sizeDiv3, xPos1+sizeDiv3, yPos1+height-(sizeDiv3), vertW, 1, c_white,1);



}
