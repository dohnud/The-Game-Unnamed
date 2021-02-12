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
    if(!place_meeting(x+sign(h),y,parentBoarder)){
        x += sign(h) * god.gameSpeed;
    }else{
        x_collide();
        break;
    }
}

//repeat(abs(h)) {        
//    if(!place_meeting(x+sign(h),y,oCollision)){
//        x += sign(h) * god.gameSpeed;
//    }else{
//        x_collide();
//        break;
//    }
//}


