var mx = device_mouse_x_to_gui(0);  
var my = device_mouse_y_to_gui(0);

if(GUIWindow[eGUIInfo.showing])
{
	SetMouseOverGUIButton(mx,my, ControlButtons, eControlButtons.numbuttons);	
			
	if(IsMouseInThisGUIWindow(mx,my, GUIWindow))
	{	

		if (mouse_check_button_pressed(mb_left)) 
		{		
			SetLMBGUIButton(mx,my, ControlButtons, eControlButtons.numbuttons);	
		}		
	}		
}