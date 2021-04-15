/// @function DrawButtons(buttonsarray, number, highlight)
/// @description 
function DrawButtons(argument0, argument1, argument2) {


	var array = argument0;
	var numButs = argument1;
	var highlight = argument2;

	for(var i=0; i<numButs; i++)
	{
		if(array[@ i, eGUIButtonInfo.enabled])
		{
		
			if(highlight && array[@ i, eGUIButtonInfo.selected])
			{
				draw_set_colour(c_white);
				draw_rectangle(array[i, eGUIButtonInfo.xpos]-2, array[i, eGUIButtonInfo.ypos]-2, array[i, eGUIButtonInfo.xpos2]+2, array[i, eGUIButtonInfo.ypos2]+2,true); 
			}	

		
			if(array[i, eGUIButtonInfo.sprite_background]!=noone )
			{
				draw_sprite_ext(array[i, eGUIButtonInfo.sprite_background], 0, array[i, eGUIButtonInfo.xpos], array[i, eGUIButtonInfo.ypos],  array[i, eGUIButtonInfo.sprite_background_scale], array[i, eGUIButtonInfo.sprite_background_scale], 0, c_white, 1);		
			}
		
			var sprite_idx = 0;
			if(array[i, eGUIButtonInfo.alt_state]==false)
			{
			
				if(array[i, eGUIButtonInfo.mouseover])
				{
					sprite_idx = 1;
				}
		
				draw_sprite_ext(array[i, eGUIButtonInfo.sprite], sprite_idx, array[i, eGUIButtonInfo.xpos], array[i, eGUIButtonInfo.ypos],  array[i, eGUIButtonInfo.scale], array[i, eGUIButtonInfo.scale], 0, c_white, 1);
			
			}
			else
			{
			
				if(array[i, eGUIButtonInfo.mouseover])
				{
					sprite_idx = 1;
				}			
				draw_sprite_ext(array[i, eGUIButtonInfo.sprite_alt], sprite_idx, array[i, eGUIButtonInfo.xpos], array[i, eGUIButtonInfo.ypos],  array[i, eGUIButtonInfo.scale], array[i, eGUIButtonInfo.scale], 0, c_white, 1);	
			}
		
			if(array[i, eGUIButtonInfo.checkbox_txt] != "" )
			{
				//assume drawing to the right of a check box
				var xoff = array[i, eGUIButtonInfo.button_size]+5;
				if(array[i, eGUIButtonInfo.alt_state]==false)
				{
					draw_text(array[i, eGUIButtonInfo.xpos]+xoff, array[i, eGUIButtonInfo.ypos], array[i, eGUIButtonInfo.checkbox_txt]);
				}
				else
				{
					draw_text(array[i, eGUIButtonInfo.xpos]+xoff, array[i, eGUIButtonInfo.ypos], array[i, eGUIButtonInfo.checkbox_txt_alt]);
		
				}

			}
		
		}

	}


}
