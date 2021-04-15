/// @function SetLMBGUIButton()
/// @description, if button enabled, set our lmb attribute if clicked, and swith sprite and state if using
function SetLMBGUIButton(argument0, argument1, argument2, argument3) {

	var mx = argument0;  
	var my = argument1;
	var array = argument2;
	var numButs = argument3;

	for(var i=0; i<numButs; i++)
	{
		if(array[@ i, eGUIButtonInfo.enabled])
		{
			if(point_in_rectangle(mx,my,array[i, eGUIButtonInfo.xpos], array[i, eGUIButtonInfo.ypos], array[i, eGUIButtonInfo.xpos2], array[i, eGUIButtonInfo.ypos2]))
			{
				array[@ i, eGUIButtonInfo.lmb] = true;	
			
				if(array[i, eGUIButtonInfo.sprite_alt] != noone)
				{
					array[@ i, eGUIButtonInfo.alt_state] = !array[i, eGUIButtonInfo.alt_state];
				}
			}	
		}
		
	}




}
