/// @function InitGUIWindow(window)
/// @description default all our attributes
function InitGUIWindow(argument0) {

	var array = argument0;

	array[@ eGUIInfo.xpos] = -1;	
	array[@ eGUIInfo.ypos] = -1;	
	array[@ eGUIInfo.width] = -1;	
	array[@ eGUIInfo.height] = -1;
	array[@ eGUIInfo.xpos2] = -1;	
	array[@ eGUIInfo.ypos2] = -1;	
	array[@ eGUIInfo.xposhalf] = -1;	
	array[@ eGUIInfo.yposhalf] = -1;	
	array[@ eGUIInfo.showing] = false;
	array[@ eGUIInfo.background] = eGUIBackGnd.rectangle;
	array[@ eGUIInfo.background_sprite] = noone;
	array[@ eGUIInfo.side_padding] = 5;




}
