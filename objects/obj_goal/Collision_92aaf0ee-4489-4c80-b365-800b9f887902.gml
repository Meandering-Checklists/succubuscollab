//add point to score
score += 1;

//resets the hasVictim flag on the player so they can pick up another victim
obj_player.hasVictim = false;

//decrease object count
obj_spawn.curObjCount--;

//instance of victim is destroyed
instance_destroy(other);
