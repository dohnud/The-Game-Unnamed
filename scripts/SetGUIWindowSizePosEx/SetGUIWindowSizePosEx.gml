/// @function SetGUIWindowSizePosEx(winarray, screenposx, screenposy, width, hieght)
/// @description 
function SetGUIWindowSizePosEx(argument0, argument1, argument2, argument3, argument4) {

	// we could use GUIWindow directly rather than array accessor,
	// but a child gui obj may have additional windows, so can reuse this

	var array = argument0;
	var screenposx = argument1;
	var screenposy = argument2;
	var width = argument3;
	var height = argument4;

	array[@ eGUIInfo.width] = width;	
	array[@ eGUIInfo.height] = height;

	array[@ eGUIInfo.xpos] = screenposx;
	array[@ eGUIInfo.ypos] = screenposy;

	array[@ eGUIInfo.xpos2] = array[@ eGUIInfo.xpos] + array[@ eGUIInfo.width];	
	array[@ eGUIInfo.ypos2] = array[@ eGUIInfo.ypos] + array[@ eGUIInfo.height];

	array[@ eGUIInfo.xposhalf] = array[@ eGUIInfo.xpos] + array[@ eGUIInfo.width]/2;	
	array[@ eGUIInfo.yposhalf] = array[@ eGUIInfo.ypos] + array[@ eGUIInfo.height]/2;




}
