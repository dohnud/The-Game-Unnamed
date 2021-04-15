/// @function IsMouseInThisGUIWindow(mx,my, window)
/// @description check this GUI object and see if mouse is currently over it
function IsMouseInThisGUIWindow(argument0, argument1, argument2) {

	var mx = argument0;  
	var my = argument1;


	if(argument2[eGUIInfo.showing])
	{
		if(point_in_rectangle(mx,my,argument2[eGUIInfo.xpos],argument2[eGUIInfo.ypos],argument2[eGUIInfo.xpos]+argument2[eGUIInfo.width],argument2[eGUIInfo.ypos]+argument2[eGUIInfo.height]))
		{
			return true;
		}
	}

	return false;


}
