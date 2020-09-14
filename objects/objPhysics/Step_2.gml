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
        if(place_meeting(x,y+sign(v),objBlocker)){
            y_collide();
            break;
        }else{
            y += sign(v) * objGod.gameSpeed;
        }
    }else if (check_below()){
        y_collide();
        break;
    }else{
        y += sign(v) * objGod.gameSpeed;
    }
}

repeat(abs(h)) {        
    if(!place_meeting(x+sign(h),y,objBlocker)){
        x += sign(h) * objGod.gameSpeed;
    }else{
        x_collide();
        break;
    }
}


