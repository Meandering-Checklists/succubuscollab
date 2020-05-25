//on collision with victim, instance of victim is destroyed
instance_destroy(other);

//resets the hasVictim flag on the player so they can pick up another victim
obj_player.hasVictim = false;