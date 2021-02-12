/// @description grounded and gravity
onGround = check_below();


if(!onGround && grav){    
	if(ySpeed < 1) {
		ySpeed = approach(ySpeed,fSpeed,gSpeed*0.75);
	}else {
		ySpeed = approach(ySpeed,fSpeed,gSpeed);
	}
}


