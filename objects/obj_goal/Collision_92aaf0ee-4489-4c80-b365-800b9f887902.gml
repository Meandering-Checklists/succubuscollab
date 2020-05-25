//resets the hasVictim flag on the player so they can pick up another victim
obj_player.hasVictim = false;

//on collision with victim, instance of victim is destroyed
instance_destroy(other);

//decrease object count
global.objCount--;

//check for Win condition
if (global.objCount <= 0) {
	room_goto(rm_win);
}