if (obj_spawn.curObjCount <= 0) {
	if (obj_game.gameLevel == obj_game.maxGameLevel) {
		obj_game.gameLevel = 1;
		room_goto(rm_win);
	} 
	else {
		obj_game.cutscene = true;
		obj_game.pause = true;
		instance_create_depth(0,0,-10000,obj_roomTransition)
		
	}
	
	//reset current object count to original count
	obj_spawn.curObjCount = obj_spawn.objCount++;
}