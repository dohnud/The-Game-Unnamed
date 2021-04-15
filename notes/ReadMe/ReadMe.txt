----------------------
GameMaker GUI Framework by Niris
----------------------

GUI Framework is a collection of scripts and one GUI object that can be used to make all sorts of GUI windows with buttons
for your GameMaker game. It's has been developed over several game prototypes i've worked on which can be found on niris.itch.io

Currently this asset is free, however it's still a license. You are free to use/alter for your own games (at your own risk!),
but you may not resell or redistribute it.

Copyright (c) 2020 Niris. All rights reserved.
https://niris.itch.io/gui-framework

----------------------
Usage
----------------------

Create a child item of oGUI for each GUI window you require. By default GUIWindow[] array is created.

You can create addition windows, under one object if you prefer, just
create an array like so:-

MyExtraGUIWindow[eGUIInfo.numattributes] = 0;
InitGUIWindow(MyExtraGUIWindow);

Add/Alter scripts to use this array rather than the default GUIWindow array (in fact i might alter/add scripts to do this).

To import into your own projects just select the following folders

Sprites\nirisGUI - Several placeholder sprites (do change)
Scripts\nirisGUI - Several scripts
Objects\nirisGUI - 1 object

----------------------
Examples
----------------------
In the demo project take a look these examples:-

oScores - just a window that can show game info
oControls - a window that has a button on it (detects mouseover), checking for lmb. GameController detects this and shows the popup gui
oPopup - a window that has a close window button, checking for lmb
oCheckbox - a window that has a couple of checkboxes (custom position). GameController detects whats going on and displays info

----------------------
History
----------------------

v0.0.1.1 - 27/06/20 - Additional child window example to show a checkboxes, and how to use a custom windows position, and draw ourselves.
					- Added in SetGUIButtonsVertical (horizontal added previously).

v0.0.1.0 - 25/06/20 - First public release of GUIFramework
				    - Basic window and button support