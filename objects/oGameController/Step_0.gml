
//If NOT using mouse control, the below can be removed

mx = device_mouse_x_to_gui(0);  
my = device_mouse_y_to_gui(0);

// use this check, so we know not to bother check play area for clicks, if we are in a guiwindow (that is showing)
mouseinguiwin = IsMouseInAGuiWindow(mx,my);

// Look at our GUI objects, and trigger whatever needs doing here in this game controller 
// (if its better here than in the gui object, eg onscreen controls)
if(CheckLMBGUIButton(oControls.ControlButtons, eControlButtons.Options))
{
	oPopup.GUIWindow[eGUIInfo.showing]=true;
}
	
//Do we need to see what the checkboxes are here?
checkboxtext = "";
if(CheckLMBGUIButton(oCheckbox.CheckBoxes,eCheckButtons.Check1))
{
	checkboxtext += "Chk1 clicked\n"; //may not see this as CheckLMBGUIButton reset on call
}
if(CheckLMBGUIButton(oCheckbox.CheckBoxes,eCheckButtons.Check2))
{
	checkboxtext += "Chk2 clicked\n"; //may not see this as CheckLMBGUIButton reset on call
}
if(CheckGUIButtonState(oCheckbox.CheckBoxes,eCheckButtons.Check1))
{
	checkboxtext += "Chk1 enabled\n";
}
if(CheckGUIButtonState(oCheckbox.CheckBoxes,eCheckButtons.Check2))
{
	checkboxtext += "Chk2 enabled\n";
}
if(CheckGUIButtonSelected(oCheckbox.CheckBoxes,eCheckButtons.Check1))
{
	checkboxtext += "Chk1 last clicked\n";
}
if(CheckGUIButtonSelected(oCheckbox.CheckBoxes,eCheckButtons.Check2))
{
	checkboxtext += "Chk2 last clicked\n";
}




if(!mouseinguiwin)
{
	// if we need to deal with mouse interactting with our game-	
	
	

	
}

