function check_below() {
	//Returns true if the object is standing on solid ground 
	//(including jump-thru platforms), false otherwise.

	//An object is on solid ground if:
	// 1. there is an objBlocker directly below it
	//  OR
	// 2.   a. there is an objJumpthru directly below it
	//          AND
	//      b. there is not an objJumpthru inside it

	return place_meeting( x, y+1, objBlocker ) 
	    || (place_meeting( x, y+1, objJumpthru ) && !place_meeting( x, y, objJumpthru ) && sign(ySpeed) != -1);



}
