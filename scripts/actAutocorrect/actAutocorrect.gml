function actAutocorrect(){
	var target_x = mean(instPlayer1.x,instPlayer2.x)
	
	if(x < target_x) {
		facing = 1
	}else if(x > target_x) {
		facing = -1
	}
}
