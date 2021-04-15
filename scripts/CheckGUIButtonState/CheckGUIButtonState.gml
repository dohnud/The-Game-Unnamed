/// @function CheckGUIButtonState()
/// @description returns state (if the button has on/off)
function CheckGUIButtonState(argument0, argument1) {

	// Note returning !state, as we are using altstate (might want to create a CheckGUIButtonAltState, for clarity)

	return !argument0[@ argument1, eGUIButtonInfo.alt_state];




}
