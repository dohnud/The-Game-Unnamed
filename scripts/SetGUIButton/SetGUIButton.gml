/// @function SetGUIButton(array, whichbutton, xpos, ypos, butsize)
/// @description setup GUIButtons positions in our windows
function SetGUIButton(argument0, argument1, argument2, argument3, argument4) {

	var array = argument0;
	var arrayoff = argument1;
	var xpos = argument2;
	var ypos = argument3;
	var butsize = argument4;


	array[@ arrayoff, eGUIButtonInfo.xpos] = xpos;
	array[@ arrayoff, eGUIButtonInfo.ypos] = ypos;
	array[@ arrayoff, eGUIButtonInfo.xpos2] = array[@ arrayoff, eGUIButtonInfo.xpos] + butsize;
	array[@ arrayoff, eGUIButtonInfo.ypos2] = array[@ arrayoff, eGUIButtonInfo.ypos] + butsize;
	array[@ arrayoff, eGUIButtonInfo.button_size] = butsize;
	array[@ arrayoff, eGUIButtonInfo.scale] = butsize/sprite_get_width(array[arrayoff, eGUIButtonInfo.sprite]);	
	array[@ arrayoff, eGUIButtonInfo.sprite_background_scale] = butsize/sprite_get_width(array[arrayoff, eGUIButtonInfo.sprite_background]);	

	array[@ arrayoff, eGUIButtonInfo.enabled] = true;







}
