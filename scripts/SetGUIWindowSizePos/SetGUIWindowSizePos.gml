/// @function SetGUIWindowSizePos(winarray, screenpos, width, hieght)
/// @description 
function SetGUIWindowSizePos(argument0, argument1, argument2, argument3) {

	// we could use GUIWindow directly rather than array accessor,
	// but a child gui obj may have additional windows, so can reuse this

	var array = argument0;
	var screenpos = argument1;
	var width = argument2;
	var height = argument3;
	var screenposx = 0;
	var screenposy = 0;

	if(screenpos==eGUIBuildPosition.top_center)
	{	
		screenposx = (guiwidth/2) - width/2;	
		screenposy = array[@ eGUIInfo.side_padding];
	}
	else if(screenpos==eGUIBuildPosition.top_left)
	{
		screenposx = array[@ eGUIInfo.side_padding];	
		screenposy = array[@ eGUIInfo.side_padding];
	}
	else if(screenpos==eGUIBuildPosition.bottom_center)
	{
		screenposx = (guiwidth/2) - width/2;	
		screenposy = (guiheight) - (height + array[@ eGUIInfo.side_padding])
	}
	else if(screenpos==eGUIBuildPosition.bottom_right)
	{
		screenposx = (guiwidth) - (width + array[@ eGUIInfo.side_padding]);	
		screenposy = (guiheight) - (height + array[@ eGUIInfo.side_padding]);
	}
	else if(screenpos==eGUIBuildPosition.bottom_left)
	{
		screenposx = array[@ eGUIInfo.side_padding];	
		screenposy = (guiheight) - (height + array[@ eGUIInfo.side_padding]);
	}
	else if(screenpos==eGUIBuildPosition.middle_right)
	{
		screenposx = (guiwidth) - (width + array[@ eGUIInfo.side_padding]);		
		screenposy = (guiheight/2) - height/2
	}
	else if(screenpos==eGUIBuildPosition.middle_center)
	{
		screenposx = (guiwidth/2) - width/2;	
		screenposy = (guiheight/2) - height/2
	}


	SetGUIWindowSizePosEx(array,screenposx,screenposy, width, height)






}
