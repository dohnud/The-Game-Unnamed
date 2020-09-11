/// @description frame_check(currentFrame, frameCounter);
/// @function frame_check
/// @param currentFrame
/// @param  frameCounter
function frame_check(argument0, argument1) {
	//use this to check animation frames
	//returns true or false
	var _pass = false;

	if(currentFrame == argument0 && frameCounter == argument1){
	    _pass = true;
	}

	return _pass;



}
