//Control Victim State
if (instance_exists(obj_player))
{
	switch (state)
	{	
		case 1: //Does Nothing
			break;
		
		case 2: //Movement Code Follows
			if (abs(x - obj_player.x) > followDistance)
			{
				xdir = sign(obj_player.x -x);
				hspd = xdir * walkSpeed;
				x += hspd;				
			}
			if (abs(y - obj_player.y) > followDistance)
			{
				ydir = sign(obj_player.y -y);
				vspd = ydir * walkSpeed;
				y += vspd;
		
			}
			break;
	}
}	