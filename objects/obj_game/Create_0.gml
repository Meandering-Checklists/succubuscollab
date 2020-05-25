//set "center" of text
draw_set_halign(fa_center);
draw_set_valign(fa_top);

//Safe Zone
var xMin = 950;
var xMax = 1230;
var yMin = 50;
var yMax = 670;

//place Victims randomly in safe zone
randomize();
global.objCount = 3; //num of Victims
global.curObjCount = global.objCount;

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
	room_instance_add(rm_game, xx, yy, obj_victim);
}