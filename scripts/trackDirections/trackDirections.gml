function trackDirections(){
	//update holds
	forwardHold = forward;
	backHold  = back;
    upHold    = up;
	downHold  = down;
		
	//update inputs
	if(facing = 1){
		forward = keyboard_check(ord("D"));
		back = keyboard_check(ord("A"));
	}else {
		forward  = keyboard_check(ord("A"));
		back = keyboard_check(ord("D"));
	}
	
	up = keyboard_check(vk_space);
	down = keyboard_check(ord("S"));
	
	if(forward && back) {
		forward = false;
		back = false;
	}
	if(up && down) {
		down = false;
	}	
	
	//neutral(5)
	if(!down && !back && !forward && !up) {
		dir5 = true;		
		dir5last[0] = 0;
	}else {
		dir5 = false;
		dir5last[0] += 1;
	}
	
	//downback(1)
	dir1hold = dir1;
	if(down && back) {dir1 = true;}
	else {dir1 = false;}
	updateDirection(dir1, dir1tap, dir1hold, dir1last, dir1taplast)
	
	//down(2)
	dir2hold = dir2;
	if(down && !back && !forward) {dir2 = true;}
	else {dir2 = false;}
	updateDirection(dir2, dir2tap, dir2hold, dir2last, dir2taplast)
	
	//downforward(3)
	dir3hold = dir3;
	if(down && forward) {dir3 = true;}
	else {dir3 = false;}
	updateDirection(dir3, dir3tap, dir3hold, dir3last, dir3taplast)
	
	//back(4)
	dir4hold = dir4;
	if(back && !down && !up) {dir4 = true;}
	else {dir4 = false;}
	updateDirection(dir4, dir4tap, dir4hold, dir4last, dir4taplast)
	
	//forward(6)
	dir6hold = dir6;
	if(forward && !down && !up) {dir6 = true;}
	else {dir6 = false;}
	updateDirection(dir6, dir6tap, dir6hold, dir6last, dir6taplast)
	
	//upback(7)
	dir7hold = dir7;
	if(up && back) {dir7 = true;}
	else {dir7 = false;}
	updateDirection(dir7, dir7tap, dir7hold, dir7last, dir7taplast)
	
	//up(8)
	dir8hold = dir8;
	if(up && !back && !forward) {dir8 = true;}
	else {dir8 = false;}
	updateDirection(dir8, dir8tap, dir8hold, dir8last, dir8taplast)
	
	//upforward(9)
	dir9hold = dir9;
	if(up && forward) {dir9 = true;}
	else {dir9 = false;}
	updateDirection(dir9, dir9tap, dir9hold, dir9last, dir9taplast)
}