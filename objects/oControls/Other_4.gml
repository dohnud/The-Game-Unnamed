event_inherited();

SetGUIWindowSizePos(GUIWindow, eGUIBuildPosition.bottom_right, 200, 50);

// customise buttons
ControlButtons[eControlButtons.Options, eGUIButtonInfo.sprite] = sOptions;
ControlButtons[eControlButtons.Options, eGUIButtonInfo.mouseover] = eGUIButtonMouseOver.spriteindex;

SetGUIButtonsHorizontal(GUIWindow, ControlButtons, eControlButtons.numbuttons, 32);

