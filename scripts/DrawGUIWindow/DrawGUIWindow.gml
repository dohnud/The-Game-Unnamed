/// @function DrawGUIWindow()
/// @description draw our different types of gui background
function DrawGUIWindow() {

	if(GUIWindow[eGUIInfo.background] == eGUIBackGnd.roundrect)
	{
		draw_set_colour(c_black);
		draw_roundrect(GUIWindow[eGUIInfo.xpos], GUIWindow[eGUIInfo.ypos],  GUIWindow[eGUIInfo.xpos2], GUIWindow[eGUIInfo.ypos2], false); 
		draw_set_colour(c_white);
		draw_roundrect(GUIWindow[eGUIInfo.xpos], GUIWindow[eGUIInfo.ypos],  GUIWindow[eGUIInfo.xpos2], GUIWindow[eGUIInfo.ypos2], true);  	
	
	}
	else if(GUIWindow[eGUIInfo.background] == eGUIBackGnd.rectangle)
	{
		draw_set_colour(c_black);
		draw_rectangle(GUIWindow[eGUIInfo.xpos], GUIWindow[eGUIInfo.ypos],  GUIWindow[eGUIInfo.xpos2], GUIWindow[eGUIInfo.ypos2], false); 
		draw_set_colour(c_white);
		draw_rectangle(GUIWindow[eGUIInfo.xpos], GUIWindow[eGUIInfo.ypos],  GUIWindow[eGUIInfo.xpos2], GUIWindow[eGUIInfo.ypos2], true);  	
		
	}
	else if(GUIWindow[eGUIInfo.background]  == eGUIBackGnd.nineslice)
	{
		DrawNineSliceSprite(GUIWindow[eGUIInfo.background_sprite] , GUIWindow[eGUIInfo.xpos], GUIWindow[eGUIInfo.ypos],  GUIWindow[eGUIInfo.xpos2], GUIWindow[eGUIInfo.ypos2]);
	}
	else if(GUIWindow[eGUIInfo.background]  == eGUIBackGnd.sprite)
	{
		draw_sprite(GUIWindow[eGUIInfo.background_sprite], 0, GUIWindow[eGUIInfo.xpos], GUIWindow[eGUIInfo.ypos]);
	}


	


}
