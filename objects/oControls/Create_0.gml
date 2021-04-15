event_inherited();

GUIWindow[eGUIInfo.showing] = true;
GUIWindow[eGUIInfo.name] = "Controls"; 

// custom enum for the buttons required
enum eControlButtons
{
	Options=0,
	numbuttons,
};

ControlButtons[eControlButtons.numbuttons, eGUIButtonInfo.numattributes] = 0;
InitGUIButtons(ControlButtons, eControlButtons.numbuttons);
