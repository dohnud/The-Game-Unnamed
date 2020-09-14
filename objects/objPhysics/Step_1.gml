/// @description grounded and gravity
onGround = check_below();

if(!onGround){
    ySpeed += gSpeed * objGod.gameSpeed;
}


