if(GUIWindow[eGUIInfo.showing])
{
	
	DrawGUIWindow();

	// add our custom info for this window - score? health? lives?	
	// use our GUIWindow[] xpos, xposhalf, etc, for positioning text
	var xtext = GUIWindow[eGUIInfo.xposhalf];
	var ytext = GUIWindow[eGUIInfo.yposhalf];
	
	var itemtext = "Score: 100";
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(xtext, ytext, itemtext)  ;

	//defaults (usually)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}