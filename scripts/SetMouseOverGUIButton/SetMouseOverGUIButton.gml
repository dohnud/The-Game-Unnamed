/// @function SetLMBGUIButton(mx,my, ControlButtons, eControlButtons.numbuttons);	()
/// @description, if button enabled, set our mouse attribute if over
function SetMouseOverGUIButton(argument0, argument1, argument2, argument3) {

	var mx = argument0;  
	var my = argument1;
	var array = argument2;
	var numButs = argument3;

	for(var i=0; i<numButs; i++)
	{
		if(array[@ i, eGUIButtonInfo.enabled])
		{
			array[@ i, eGUIButtonInfo.mouseover] = false;
			if(point_in_rectangle(mx,my,array[i, eGUIButtonInfo.xpos], array[i, eGUIButtonInfo.ypos], array[i, eGUIButtonInfo.xpos2], array[i, eGUIButtonInfo.ypos2]))
			{
				array[@ i, eGUIButtonInfo.mouseover] = true;
			}	
		}
		
	}




}
