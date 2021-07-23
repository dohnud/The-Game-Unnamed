//dirX        - direction being held(t/f)
//dirXtap     - direction being held, was in neutral last frame
//dirXhold    - direction being held, was in the same direction last frame
//dirXlast    - # of frames since the direction was held, stores the last 2 times
//dirXtaplast - # of frames since the direction was held, stores the last 2 times
function updateDirection(dirX, dirXtap, dirXhold, dirXlast, dirXtaplast){
	if(dirX) {
		if(dir5last[0] = 1) {
			dirXtap[@ 0] = true;
			dirXtaplast[@ 1] = dirXtaplast[@ 0]
			dirXtaplast[@ 0] = 0;
		}else {
			dirXtap[@ 0] = false;
			dirXtaplast[@ 0] += 1;
			dirXtaplast[@ 1] += 1;
		}
		
		if(!dirXhold) {
			dirXlast[@ 1] = dirXlast[@ 0]
		}
					
		dirXlast[@ 0] = 0;		
	}else {
		dirXlast[@ 0] += 1;
		dirXlast[@ 1] += 1;
			
		dirXtaplast[@ 0] += 1;
		dirXtaplast[@ 1] += 1;
	}
}