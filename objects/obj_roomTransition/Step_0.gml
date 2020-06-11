if (fading = false) {
	image_alpha += .01;	
} else {
	image_alpha -= .01;	
}

if (image_alpha >= 1) {
	fading = true;
	obj_game.gameLevel++;
	room_restart();
}

if (image_alpha <= 0) {
	obj_game.pause = false;
	obj_game.cutscene = false;
	instance_destroy();	
}