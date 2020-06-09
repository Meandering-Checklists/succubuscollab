//spawn Player and Goal in game room
var playerX = 60;
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
objCount = obj_game.gameLevel +2; //num of Victims
curObjCount = objCount;
laneCount = obj_game.gameLevel; //num of lanes
//curLaneCount = laneCount;

/*
repeat(objCount) {
	//select random x and y
	xx = irandom_range(xMin, xMax);
	yy = irandom_range(yMin, yMax);
	
	//prevent overlap
	while (place_meeting(xx, yy, other)) {
		show_debug_message("respawning");
		xx = irandom_range(xMin, xMax);
	    yy = irandom_range(yMin, yMax);
	}
	
	//create instance in game room
	instance_create_layer(xx, yy, "Instances", obj_victim);
}
*/

//space between victims
vicWidth = sprite_get_width(spr_victim);
vicHeight = sprite_get_height(spr_victim);

repeat(objCount) {
    var xx = irandom_range(xMin, xMax);
	var yy = irandom_range(yMin, yMax);
    vicInst = collision_rectangle(xx - vicWidth, yy - vicHeight, xx + vicHeight, yy + vicWidth, obj_victim, false, true);
	
	//prevent overlap
    while(vicInst != noone) {
        show_debug_message("respawning victim");
     
        // try again
        xx = irandom_range(xMin, xMax);
		yy = irandom_range(yMin, yMax);
     
        // update collision
        vicInst = collision_rectangle(xx - vicWidth, yy - vicHeight, xx + vicHeight, yy + vicWidth, obj_victim, false, true);
    }
 
    // did we find an empty space?
    if(vicInst == noone) {
        instance_create_layer(xx, yy, "Instances", obj_victim);
    }
}


//Lane Zone
laneXMin = 300;
laneXMax = xMin - 100;

//space between lanes
laneWidth = sprite_get_width(spr_enemy) * 3;
laneHeight = sprite_get_height(spr_enemy) * 3;

//place Lanes randomly in Lane Zone
repeat(laneCount) {
	//select random x
	xLane = irandom_range(laneXMin,laneXMax);
	yLane = 0;
	laneInst = collision_rectangle(xLane - laneWidth, yLane, xLane + laneHeight, yLane + laneHeight, obj_enemy, false, true);
	
	//prevent overlap
    while(laneInst != noone) {
        show_debug_message("respawning lane");
     
        // try again
        xLane = irandom_range(laneXMin, laneXMax);
     
        // update collision
        laneInst = collision_rectangle(xLane - laneWidth, yLane, xLane + laneHeight, yLane + laneHeight, obj_enemy, false, true);
    }
 
    // did we find an empty space?
    if(laneInst == noone) {
        instance_create_layer(xLane, yLane, "Instances", obj_lane);
    }
}
