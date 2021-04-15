event_inherited();

GUIWindow[eGUIInfo.showing] = false;
GUIWindow[eGUIInfo.name] = "Popup"; 
GUIWindow[eGUIInfo.background] = eGUIBackGnd.nineslice;
GUIWindow[eGUIInfo.background_sprite]  = sButton;

enum eWinButtons
{
	CloseWindow = 0,
	numbuttons,
};
GUIWindowButtons[eWinButtons.numbuttons, eGUIButtonInfo.numattributes] = 0;
InitGUIButtons(GUIWindowButtons, eWinButtons.numbuttons);