/// @description collision
var h, v;

// Handle sub-pixel movement
hCounter += xSpeed;
vCounter += ySpeed;
h = round(hCounter);
v = round(vCounter);
hCounter -= h;
vCounter -= v;

repeat(abs(v)){
    if(ySpeed <= 0){
        if(place_meeting(x,y+sign(v),parentBoarder)){
            y_collide();
            break;
        }else{
            y += sign(v) * god.gameSpeed;
        }
    }else if (check_below()){
        y_collide();
        break;
    }else{
        y += sign(v) * god.gameSpeed;
    }
}

repeat(abs(h)) {        
    if(place_meeting(collision.x+sign(h),collision.y,parentBoarder) || (onGround && collision.collLine = opponent.collision)){
        x_collide();
        break;
    }else{
		x += sign(h) * god.gameSpeed;
    }
}


