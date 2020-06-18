if (timer > 0 && room == rm_game) {
   timer -= 1;
}

if (timer <= 0) {
	instance_create_depth(0,0,-10000,obj_roomTransition)
	timer = room_speed * time;
	show_debug_message("timer reset");
}
