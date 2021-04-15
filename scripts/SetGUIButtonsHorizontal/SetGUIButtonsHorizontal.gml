/// @function SetGUIButtonsHorizontal(array, numberbuttons, buttonsize)
/// @description setup GUIButtons positions in our windows
function SetGUIButtonsHorizontal(argument0, argument1, argument2, argument3) {

	var arrayWin = argument0;
	var array = argument1;
	var numButs = argument2;
	var butsize = argument3;
	var butgap = floor(arrayWin[@ eGUIInfo.width]/(numButs+1));
	var xoffset = butgap - (butsize/2);
	var yoffset = floor(arrayWin[@ eGUIInfo.height]/2 - butsize/2);


	for(var i=0; i<numButs; i++)
	{
	
		SetGUIButton(argument1, i, arrayWin[eGUIInfo.xpos] + xoffset + (butgap*i), arrayWin[eGUIInfo.ypos] + yoffset, argument3);
				
	}







}
