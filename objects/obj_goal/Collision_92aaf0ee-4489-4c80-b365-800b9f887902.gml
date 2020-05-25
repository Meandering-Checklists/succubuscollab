//resets the hasVictim flag on the player so they can pick up another victim
obj_player.hasVictim = false;

//on collision with victim, instance of victim is destroyed
instance_destroy(other);

//decrease object count
global.curObjCount--;

//check for Win condition (all Victims gone)
if (global.curObjCount <= 0) {
	//go to Win screen
	room_goto(rm_win);
	
	//reset current object count to original count
	global.curObjCount = global.objCount;
}