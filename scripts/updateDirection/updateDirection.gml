// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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