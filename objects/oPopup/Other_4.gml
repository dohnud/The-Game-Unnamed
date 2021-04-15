event_inherited();

SetGUIWindowSizePos(GUIWindow, eGUIBuildPosition.middle_center, 200, 200);


GUIWindowButtons[eWinButtons.CloseWindow, eGUIButtonInfo.sprite] = sCross;
GUIWindowButtons[eWinButtons.CloseWindow, eGUIButtonInfo.sprite_background] = sButton;
SetGUIButtonTopRight(GUIWindow, GUIWindowButtons, eWinButtons.CloseWindow, 20);
