

enum eGUIInfo
{
	xpos = 0,
	ypos,
	width,
	height,
	xpos2,
	ypos2,
	xposhalf,
	yposhalf,
	showing,
	background,
	background_sprite,
	side_padding,
	name,
	numattributes,
}


//gui background settings - rectangles/sprites -
enum eGUIBackGnd
{
	rectangle,
	roundrect,
	nineslice,
	sprite,	
}

GUIWindow[eGUIInfo.numattributes] = 0;
InitGUIWindow(GUIWindow);

enum eGUIBuildPosition
{
	top_left,
	top_center,
	top_right,
	bottom_right,
	bottom_center,
	bottom_left,
	middle_right,	
	middle_left,	
	middle_center,
};

//these need to update on rooms start incase of resolution changes
guiwidth = display_get_gui_width();
guiheight = display_get_gui_height();


//Button attributes
enum eGUIButtonInfo
{
	xpos,
	ypos,
	xpos2,
	ypos2,	
	lmb, //lmb has been pressed on this button
	selected, // true/false currently unselect every other button in the button array (for group)
	alt_state, // init as false	
	enabled, // we may have different buttons in same place, that are switched, only show/check if enabled		
	mouseover, //mouseover, what to do?	
	//sprite settings
	sprite,
	sprite_alt, // for on/off buttons (sprite is the start state, sprite_alt is shown when alt_state is true)
	scale,		
	sprite_background, // can use a plain background
	sprite_background_scale,
	button_size,
	//checkbox
	checkbox_txt,  // text to show next to (if set)
	checkbox_txt_alt, //  and the alt state text
	numattributes
};


enum eGUIButtonMouseOver
{
	none,
	spriteindex,	
};

