/// @function IsMouseInAGUIWindow(mx,my)
/// @description run through GUI objects and see if mouse is currently over them
function IsMouseInAGuiWindow(argument0, argument1) {

	var mx = argument0;  
	var my = argument1;


	for (var i = 0; i < instance_number(oGUI); ++i;)
	{	
		var nextgui = instance_find(oGUI,i);

		if(nextgui.GUIWindow[eGUIInfo.showing])
		{
			if(point_in_rectangle(mx,my,nextgui.GUIWindow[eGUIInfo.xpos],nextgui.GUIWindow[eGUIInfo.ypos],nextgui.GUIWindow[eGUIInfo.xpos]+nextgui.GUIWindow[eGUIInfo.width],nextgui.GUIWindow[eGUIInfo.ypos]+nextgui.GUIWindow[eGUIInfo.height]))
			{
				return true;
			}
		}

	}

	return false;



}
