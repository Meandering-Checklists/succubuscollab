//Safe Zone
xMin = 950;
xMax = 1230;
yMin = 50;
yMax = 670;

repeat(global.objCount) {
	//select random x and y
	var xx = irandom_range(xMin, xMax);
	var yy = irandom_range(yMin, yMax);
	
	//prevent overlap
	while (place_meeting(xx, yy, obj_victim)) {
		xx = irandom_range(xMin, xMax);
	    yy = irandom_range(yMin, yMax);
	}
	
	//create instance in game room
	//room_instance_add(rm_game, xx, yy, obj_victim);
	instance_create_layer(xx, yy, "Instances", obj_victim);
}