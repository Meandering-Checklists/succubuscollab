//set "center" of text
draw_set_halign(fa_center);
draw_set_valign(fa_top);

//place Victims randomly in safe zone
randomise();
global.objCount = 3; //num of Victims
curObjCount = global.objCount;