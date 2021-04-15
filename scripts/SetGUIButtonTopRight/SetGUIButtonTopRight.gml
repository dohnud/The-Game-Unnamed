/// @function SetGUIButtonTopRight(guiarray, buttonarray, whichbutton, buttonsize)
/// @description setup GUIButtons positions in our windows
function SetGUIButtonTopRight(argument0, argument1, argument2, argument3) {

	var arrayWin = argument0;
	var xoffset = arrayWin[@ eGUIInfo.width] - (argument3+6);
	var yoffset = 6;

	SetGUIButton(argument1, argument2, arrayWin[eGUIInfo.xpos] + xoffset, arrayWin[eGUIInfo.ypos] + yoffset, argument3);



}
