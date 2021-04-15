
event_inherited();

GUIWindow[eGUIInfo.showing] = true;
GUIWindow[eGUIInfo.name] = "CheckboxDemo"; 
GUIWindow[eGUIInfo.background] = eGUIBackGnd.rectangle;

// custom enum for the  buttons required - lets have 2 checkboxes
enum eCheckButtons
{
	Check1=0,
	Check2,
	numbuttons,
};

CheckBoxes[eCheckButtons.numbuttons, eGUIButtonInfo.numattributes] = 0;
InitGUIButtons(CheckBoxes, eCheckButtons.numbuttons);