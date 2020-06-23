if (obj_goal.captured) {
	obj_game.captCount += 1;
	
	show_debug_message("number captured: " + string(obj_game.captCount));
	
	if (obj_game.captCount == 3) {
		obj_game.comboMult = 2;
		show_debug_message("combo multiplier: " + string(obj_game.comboMult));
	}
	
	if (obj_game.captCount > 3) {
		obj_game.comboMult += 1;
		show_debug_message("combo multiplier: " + string(obj_game.comboMult));
	}
	
	obj_goal.captured = false;
}
else {
	obj_game.captCount = 0;
	obj_game.comboMult = 1;
}


if (obj_spawn.curObjCount <= 0) {
	if (obj_game.gameLevel == obj_game.maxGameLevel) {
		obj_game.gameLevel = 1;
		obj_goal.captured = false;	//reset count and combo variables
		captCount = 0;
		comboMult = 1;
		room_goto(rm_win);
	} 
	else {
		instance_create_depth(0,0,-10000,obj_roomTransition)
		
	}
	
	//reset current object count to original count
	obj_spawn.curObjCount = obj_spawn.objCount++;
}
