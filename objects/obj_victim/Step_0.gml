//Control Victim State
if (instance_exists(obj_player)) {
	switch (state) {		
		
		case 2: //Movement Code following Player
			if (abs(x - obj_player.x) > followDistance) {
				xdir = sign(obj_player.x -x);
				hspd = xdir * walkSpeed;
				x += hspd;				
			}
			
			if (abs(y - obj_player.y) > followDistance) {
				ydir = sign(obj_player.y -y);
				vspd = ydir * walkSpeed;
				y += vspd;
			}
			break;
		
		case 3: //Magnet movement
			xMagDir = sign(obj_goal.x - x);
			yMagDir = sign(obj_goal.y - y);
		
			hMagSpd = xMagDir * obj_goal.magSpeed;
			vMagSpd = yMagDir * obj_goal.magSpeed;
				
			x += hMagSpd;
			y += vMagSpd;
	}
}	