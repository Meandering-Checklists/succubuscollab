//spawn Player and Goal in game room
var playerX = 32;
var playerY = 352;
instance_create_layer(playerX, playerY, "Instances", obj_player);
instance_create_layer(playerX, playerY, "Instances", obj_goal);

//Safe Zone
xMin = 950;
xMax = 1230;
yMin = 50;
yMax = 670;

//place Victims randomly in safe zone
randomise();
objCount = 3; //num of Victims
curObjCount = objCount;
laneCount = 3; //num of lanes
//curLaneCount = laneCount;


repeat(objCount) {
	//select random x and y
	var xx = irandom_range(xMin, xMax);
	var yy = irandom_range(yMin, yMax);
	
	//prevent overlap
	while (place_meeting(xx, yy, obj_victim)) {
		xx = irandom_range(xMin, xMax);
	    yy = irandom_range(yMin, yMax);
	}
	
	//create instance in game room
	instance_create_layer(xx, yy, "Instances", obj_victim);
}	

//lanes go from x = 300 to x = (start of safe zone - 50)
repeat(laneCount) {
	//select random x
	var xx = irandom_range(300,xMin-50);
	
	//prevent overlap
	while (place_meeting(xx, 0, obj_lane)) {
		xx = irandom_range(300, xMin-50);
	}
	
	//create instance in game room
	instance_create_layer(xx, 0, "Instances", obj_lane);
}