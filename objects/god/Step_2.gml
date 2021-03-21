/// @description camera
#macro view view_camera[0]
camera_set_view_size(view,view_width,view_height)

if(instance_exists(instPlayer1) && instance_exists(instPlayer2)) {
	var target_x = mean(instPlayer1.x,instPlayer2.x)
	var target_y = mean(instPlayer1.y,instPlayer2.y)
	var cam_x = target_x - view_width/2;
	if(target_y > 525) {
		cam_y = 525 - view_height/2;
	}else {
		var cam_y = target_y - (view_height/2);
	}
	camera_set_view_pos(view,cam_x,cam_y)
	
	if(instance_exists(instWallL) && instance_exists(instWallR)) {
		if(target_x - 100 > 100) {
			instWallL.x = target_x - 164;
		} else {
			instWallL.x = 100;
		}
		if(target_x + 100 < 1100) {
			instWallR.x = target_x + 164;
		} else {
			instWallR.x = 1100;
		}
	}
	var _min = 100;
	var _max = 250;
	seperation = clamp(abs(instPlayer1.x-instPlayer2.x), _min, _max);
	var zoom = lerp(0.01, 1.5, (seperation - _min)/(_max-_min));
	cameraZoom(zoom);
	
}

//screen shake
//if(shake) {
//    shakeDur --;
//    if(shakeDur <= 0){
//        shakeDur = 5;
//        shake = false;
//    }
    
//    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (choose(-shakeForce,shakeForce) ));
//    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (choose(-shakeForce,shakeForce) ));
//    __view_set( e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (choose(-shakeForce * 0.5,shakeForce * 0.5) ));
//}else{
//    __view_set( e__VW.XView, 0, approach(__view_get( e__VW.XView, 0 ),0,0.3 ));
//    __view_set( e__VW.YView, 0, approach(__view_get( e__VW.YView, 0 ),0,0.3 ));
//    __view_set( e__VW.Angle, 0, approach(__view_get( e__VW.Angle, 0 ),0,0.5 ));
//}

//hitstop
//if(freeze) {
//    gameSpeed = 0;
//    freezeDur --;
//    if(freezeDur <= 0){
//        freezeDur = 5;
//        gameSpeed = 1;
//        freeze = false;
//    }
//}

