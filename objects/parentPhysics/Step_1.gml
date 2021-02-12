/// @description grounded and gravity
onGround = check_below();


if(!onGround && grav){    
	if(1 > ySpeed && ySpeed > -1) {
		ySpeed = approach(ySpeed,fSpeed,gSpeed/2);
	}else {
		ySpeed = approach(ySpeed,fSpeed,gSpeed);
	}
}


