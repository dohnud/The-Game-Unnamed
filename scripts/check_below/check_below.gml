function check_below() {
	//Returns true if the object is standing on solid ground 
	//(including jump-thru platforms), false otherwise.

	return place_meeting( x, y+1, parentBoarder );

}
