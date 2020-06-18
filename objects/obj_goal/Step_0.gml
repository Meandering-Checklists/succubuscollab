if (distance_to_object(obj_victim) <= magDistance && magEffect) {
	with instance_nearest(x,y,obj_victim) {
		//no escape possible
		if (distance_to_object(obj_player) <= obj_goal.magDistance) {
			state = 3;
		}
		else {	//escape possible
			escape = irandom_range(0, 199);	//0.5% chance of escapw
			
			if (escape == 0) {
				obj_goal.magEffect = false;
				state = 4;	//victim escapes
			}
			else {
				state = 3; //victim doesn't escape
			}
		}
	}
		
	obj_player.hasVictim = false;
}