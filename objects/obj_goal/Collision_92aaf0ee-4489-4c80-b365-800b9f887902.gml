//add point to score, include combo multiplier
score += 100 * obj_game.comboMult;

//resets the hasVictim flag on the player so they can pick up another victim
obj_player.hasVictim = false;

//decrease object count
obj_spawn.curObjCount--;

//set flag that victim was successfully captured
captured = true;

//instance of victim is destroyed
instance_destroy(other);