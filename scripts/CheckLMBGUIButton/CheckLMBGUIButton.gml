/// @function CheckLMBGUIButton()
/// @description 
function CheckLMBGUIButton(argument0, argument1) {


	if(argument0[@ argument1, eGUIButtonInfo.lmb])
	{
		argument0[@ argument1, eGUIButtonInfo.lmb] = false;	
		return true;
	}

	return false;





}
