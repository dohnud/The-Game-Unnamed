 function pl_prejumpState(){
	prejump -= 1;
	ySpeed = 0;
	squash_stretch(1.2,0.8);
	if(prejump <= 0) {
		if(dir1taplast[0] < 15 || dir2taplast[0] < 15 || dir3taplast[0] < 15) {
			ySpeed = jPower * 1.7
			if(dir3 || dir6 || dir9) {
				xSpeed = facing * aSpeed * 1.3
			}else if(dir1 || dir4 || dir7) {
				xSpeed = facing * -aSpeed * 1.3
			}else {
				xSpeed = 0
			}
		}else{
			ySpeed = jPower;
			if(dir3 || dir6 || dir9) {
				if(xSpeed*facing < aSpeed*facing) {
					xSpeed = facing * aSpeed
				}
			}else if(dir1 || dir4 || dir7) {
				xSpeed = facing * -aSpeed
			}else {
				xSpeed = 0
			}
		}
		state_change(states.air);
	}
}