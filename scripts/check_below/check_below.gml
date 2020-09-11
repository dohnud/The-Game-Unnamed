function check_below() {
	//Returns true if the object is standing on solid ground 
	//(including jump-thru platforms), false otherwise.

	//An object is on solid ground if:
	// 1. there is an parentBlocker directly below it
	//  OR
	// 2.   a. there is an parentJumpthru directly below it
	//          AND
	//      b. there is not an parentJumpthru inside it

	return place_meeting( x, y+1, parentBlocker ) 
	    || (place_meeting( x, y+1, parentJumpthru ) && !place_meeting( x, y, parentJumpthru ) && sign(ySpeed) != -1);



}
