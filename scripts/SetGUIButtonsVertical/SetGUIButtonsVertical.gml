/// @function SetGUIButtonsVertical(array, numberbuttons, buttonsize)
/// @description setup GUIButtons positions in our windows
function SetGUIButtonsVertical(argument0, argument1, argument2, argument3) {

	var arrayWin = argument0;
	var array = argument1;
	var numButs = argument2;
	var butsize = argument3;
	var butgap = floor(arrayWin[@ eGUIInfo.height]/(numButs+1));
	var yoffset = butgap - (butsize/2);
	var xoffset = floor(arrayWin[@ eGUIInfo.width]/2 - butsize/2); 

	for(var i=0; i<numButs; i++)
	{
		SetGUIButton(argument1, i, arrayWin[eGUIInfo.xpos]+xoffset, arrayWin[eGUIInfo.ypos] + yoffset + (butgap*i), argument3);
		
	}





}
