//Check Pause
if obj_game.pause = true {
	exit;	
}

///Input and movement calculation
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);

inputDirection = point_direction(0,0,keyRight - keyLeft,keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection); 
vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection); 


//check for victim and make it follow
if (hasVictim = false) {
	if (distance_to_object(obj_victim) <= attractDistance) {
		with instance_nearest(x,y,obj_victim) {
			state = 2; // 2 is state number in obj_victim for follow state 	
		}
		
		hasVictim = true;
		obj_goal.magEffect = true;
	}
/*	} else { //here needs to go code for what happens when victim is destroyed and player can attract again
		
		
*/
}


//Movement



//move player's position on keypress
x += hSpeed;
y += vSpeed;

//keep player within screen
x = clamp(x,0 + sprite_width/2, room_width - sprite_width/2);
y = clamp(y,0 + sprite_height/2 +60, room_height-sprite_height/2);