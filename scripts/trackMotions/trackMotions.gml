function trackMotions(){
	//dash
	if(min(dir6taplast[1], dir3taplast[0], dir9taplast[0]) < 15 && min(dir4last[0], dir1last[0], dir7last[0]) > min(dir6taplast[1], dir3taplast[0], dir9taplast[0])) {
		motDash = true;
	}else {
		motDash = false;
	}
		
	//backdash
	if(min(dir4taplast[1], dir1taplast[0], dir7taplast[0]) < 15 && min(dir6last[0], dir3last[0], dir9last[0]) > min(dir4taplast[1], dir1taplast[0], dir7taplast[0])) {
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
	
	//qcf

	//dir2last[0] > dir3last[0] > dir5last[0]
	//dir2last[0] < 15
	//dir3last[0] < 10
	//dir5last[0] < 5 || dir9last[0] < 5
}