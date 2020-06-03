if (distance_to_object(obj_victim) <= magDistance) {
		with instance_nearest(x,y,obj_victim) {
			state = 3; //activates magnet state
		}
		
		obj_player.hasVictim = false;
	}