
event_inherited();

// lets use a custom postition bottom left area
var xpos = 200;
var ypos = 500;
SetGUIWindowSizePosEx(GUIWindow, xpos, ypos, 200, 200);

//setup our checkbox buttons
//note that alt_state is set to false initially, so is set to true when switched
//you may want to switch this around, depending if you are enabling/disabling, turning off/on
//this state is also only set if sprite_alt is set to a sprite, may want to change this
//as does it make sense to use a blank image sEmpty to set this?

//check button 1 - alt is enabled
CheckBoxes[eCheckButtons.Check1, eGUIButtonInfo.sprite] = sFull;
CheckBoxes[eCheckButtons.Check1, eGUIButtonInfo.sprite_alt] = sEmpty;
CheckBoxes[eCheckButtons.Check1, eGUIButtonInfo.sprite_background] = sButton;
CheckBoxes[eCheckButtons.Check1, eGUIButtonInfo.checkbox_txt] = "Enabled";
CheckBoxes[eCheckButtons.Check1, eGUIButtonInfo.checkbox_txt_alt] = "Disabled";

//check button 2
CheckBoxes[eCheckButtons.Check2, eGUIButtonInfo.sprite] = sTick;
CheckBoxes[eCheckButtons.Check2, eGUIButtonInfo.sprite_alt] = sCross;
CheckBoxes[eCheckButtons.Check2, eGUIButtonInfo.sprite_background] = sButton;
CheckBoxes[eCheckButtons.Check2, eGUIButtonInfo.checkbox_txt] = "Tick";
CheckBoxes[eCheckButtons.Check2, eGUIButtonInfo.checkbox_txt_alt] = "Cross";

// As for positions we could set the buttons individually, like so:-
/*xpos+=10;
ypos+=10;
SetGUIButton(CheckBoxes, eCheckButtons.Check1, xpos, ypos, 20);
ypos+=30;
SetGUIButton(CheckBoxes, eCheckButtons.Check2, xpos, ypos, 20);
*/
// or set them with the built in functions
SetGUIButtonsVertical(GUIWindow, CheckBoxes, eCheckButtons.numbuttons, 24);

//the vertical function above centers on the gui window middle, probably want to make a version to cater for an offset
// if we are dealing with check boxes with txt being displayed, eg:-
//SetGUIButtonsVerticalEx(GUIWindow, CheckBoxes, eCheckButtons.numbuttons, buttonsize, xadjustment);