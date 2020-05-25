//set "center" of text
draw_set_halign(fa_center);
draw_set_valign(fa_top);

//place Victims randomly in safe zone
//Safe Zone - x between 950 and 1230
//			- y between 50 and 670


randomize();
global.objCount = 3;	//num of Victims

repeat(global.objCount) {
	//select random x and y
	var xx = irandom_range(950, 1230);
	var yy = irandom_range(50, 670);
	
	//prevent overlap
	while (place_meeting(xx, yy, obj_victim)) {
		xx = irandom_range(950, 1230);
	    yy = irandom_range(50, 670);
	}
	
	//create instance in game room
	room_instance_add(rm_game, xx, yy, obj_victim);
}