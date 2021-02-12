function trackMotions(){
	//dash
	if(dir6tap[0] && dir6taplast[1] < 15 && dir4last[0] > dir6taplast[1]) {
		motDash = true;
	}else {
		motDash = false;
	}
		
	//backdash
	if(dir4tap[0] && dir4taplast[1] < 15 && dir6last[0] > dir4taplast[1]) {
		motBackash = true;
	}else {
		motBackash = false;
	}
	
	//superjump
	if(dir1taplast[0] < 15 || dir2taplast[0] < 15 || dir3taplast[0] < 15) {
		motSuperjump = true;
	}else {
		motSuperjump = false;
	}
}