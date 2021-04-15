/// @function SetLMBGUIButtonSelect()
/// @description 
function SetLMBGUIButtonSelect(argument0, argument1, argument2, argument3) {

	var mx = argument0;  
	var my = argument1;
	var array = argument2;
	var numButs = argument3;

	var selectedBut = -1;
	for(var i=0; i<numButs; i++)
	{
		if(array[@ i, eGUIButtonInfo.enabled])
		{
			if(point_in_rectangle(mx,my,array[i, eGUIButtonInfo.xpos], array[i, eGUIButtonInfo.ypos], array[i, eGUIButtonInfo.xpos2], array[i, eGUIButtonInfo.ypos2]))
			{
				array[@ i, eGUIButtonInfo.lmb] = true;	
				selectedBut = i;
			
				if(array[i, eGUIButtonInfo.sprite_alt] != noone)
				{
					array[@ i, eGUIButtonInfo.alt_state] = !array[i, eGUIButtonInfo.alt_state];
				}
			}	
		}
		
	}

	if(selectedBut!=-1)
	{
		for(var i=0; i<numButs; i++)
		{
			array[@ i, eGUIButtonInfo.selected] = false;	
		}
	
		array[@ selectedBut, eGUIButtonInfo.selected] = true;	
		return true;
	}

	return false;


}
