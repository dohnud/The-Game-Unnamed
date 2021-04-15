/// @function InitGUIButtons(buttonarray, numberbuttons)
/// @description intialise button(s) array
function InitGUIButtons(argument0, argument1) {

	var array = argument0;
	var numButs = argument1;

	for(var i=0; i<numButs; i++)
	{
	
		array[@ i, eGUIButtonInfo.xpos] = -1;
	
		array[@ i, eGUIButtonInfo.xpos] = -1;
		array[@ i, eGUIButtonInfo.ypos] = -1;
		array[@ i, eGUIButtonInfo.xpos2] = -1;
		array[@ i, eGUIButtonInfo.ypos2] = -1;
		array[@ i, eGUIButtonInfo.scale] = 1;	
		array[@ i, eGUIButtonInfo.sprite_background_scale] = 1;	
		array[@ i, eGUIButtonInfo.button_size] = 0;			
	
		array[@ i, eGUIButtonInfo.lmb] = false;
		array[@ i, eGUIButtonInfo.selected] = false;
		array[@ i, eGUIButtonInfo.mouseover] = eGUIButtonMouseOver.none;			
		array[@ i, eGUIButtonInfo.alt_state] = false;

	
		array[@ i, eGUIButtonInfo.sprite] = noone;
		array[@ i, eGUIButtonInfo.sprite_alt] = noone;
		array[@ i, eGUIButtonInfo.sprite_background] = noone;

		array[@ i, eGUIButtonInfo.checkbox_txt] = "";
		array[@ i, eGUIButtonInfo.checkbox_txt_alt] = "";
	
		array[@ i, eGUIButtonInfo.enabled] = false;
	}




}
