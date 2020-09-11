/// @description camera

//screen shake
if(shake){
    shakeDur --;
    if(shakeDur <= 0){
        shakeDur = 5;
        shake = false;
    }
    
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (choose(-shakeForce,shakeForce) ));
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (choose(-shakeForce,shakeForce) ));
    __view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (choose(-shakeForce * 0.5,shakeForce * 0.5) ));
}else{
    __view_set( e__VW.XView, 0, approach(__view_get( e__VW.XView, 0 ),0,0.3 ));
    __view_set( e__VW.YView, 0, approach(__view_get( e__VW.YView, 0 ),0,0.3 ));
    __view_set( e__VW.Angle, 0, approach(__view_get( e__VW.Angle, 0 ),0,0.5 ));
}

//screen freeze/hitstop
if(freeze){
    gameSpeed = 0;
    freezeDur --;
    if(freezeDur <= 0){
        freezeDur = 5;
        gameSpeed = 1;
        freeze = false;
    }
}

