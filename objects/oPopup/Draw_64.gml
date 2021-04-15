if(GUIWindow[eGUIInfo.showing])
{

	DrawGUIWindow();
	
	DrawButtons(GUIWindowButtons, eWinButtons.numbuttons, true);
	
	
	var xtext = GUIWindow[eGUIInfo.xpos] + 10;
	var ytext = GUIWindow[eGUIInfo.ypos] + 10;
	
	var itemtext = "Popup\nUsing 9slice on\nsButton sprite.";
	
	draw_text(xtext, ytext, itemtext)  ;

	//defaults (usually)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}