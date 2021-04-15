
if(GUIWindow[eGUIInfo.showing])
{

	//DrawGUIWindow();
	//Lets also do something different with this guiwindow
	draw_set_colour(c_blue);
	draw_roundrect(GUIWindow[eGUIInfo.xpos], GUIWindow[eGUIInfo.ypos],  GUIWindow[eGUIInfo.xpos2], GUIWindow[eGUIInfo.ypos2], false); 
	draw_set_colour(c_white);

	
	DrawButtons(CheckBoxes, eCheckButtons.numbuttons, false);
	
	// add a title
	draw_text(GUIWindow[eGUIInfo.xpos]+10, GUIWindow[eGUIInfo.ypos]+10, "Checkboxes")  ;
}