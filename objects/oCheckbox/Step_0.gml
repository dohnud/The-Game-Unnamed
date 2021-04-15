
if(GUIWindow[eGUIInfo.showing])
{
	var mx = device_mouse_x_to_gui(0);  
	var my = device_mouse_y_to_gui(0);

	if(IsMouseInThisGUIWindow(mx,my, GUIWindow))
	{	
		
		if (mouse_check_button_pressed(mb_left)) 
		{
			SetLMBGUIButtonSelect(mx,my, CheckBoxes, eCheckButtons.numbuttons);			
		}		
		
	}
	
}
	
	
