

//create all our games GUIs
checkboxtext = "";

instance_create_layer(0, 0, "Instances", oScores);
instance_create_layer(0, 0, "Instances", oControls);
instance_create_layer(0, 0, "Instances", oPopup);
instance_create_layer(0, 0, "Instances", oCheckbox);

infotext = @"GameMaker GUI Framework - v0.0.1.1#
https://niris.itch.io/gui-framework#
Create a child item of oGUI for each GUI window you require.
This demo has 4 GUI window examples:-#
oScores - just a window that can show game info (top_center)
oControls - a window that has a button on it(with mouseover), checking for lmb (bottom_right)
oPopup - a window that has a close window button, checking for lmb (appears in center)
oCheckbox - a window that has a couple of checkboxes (custom position)##
To import into your own projects just select the following folders#
Sprites\nirisGUI - Several placeholder sprites (change to your own)
Scripts\nirisGUI - Several scripts
Objects\nirisGUI - 1 object#
More info in the project README file (notes)#
##";
