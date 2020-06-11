if (obj_spawn.curObjCount <= 0) {
	if (obj_game.gameLevel == obj_game.maxGameLevel) {
		obj_game.gameLevel = 1;
		room_goto(rm_win);
	} 
	else {
		obj_game.gameLevel++;
		room_restart();
	}
	
	//reset current object count to original count
	obj_spawn.curObjCount = obj_spawn.objCount++;
}