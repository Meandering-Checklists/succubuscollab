if (fading = false) {
	image_alpha += .02;	
} else {
	image_alpha -= .02;	
}

if (image_alpha >= 1) {
	fading = true;
	if (room = rm_game) {
		room_goto(rm_cutscene)
	} else if room = rm_cutscene {
		room_goto(rm_game);
		obj_game.gameLevel++;	
	}
}

if (image_alpha <= 0) {
	obj_game.pause = false;
	obj_game.cutscene = false;
	instance_destroy();	
}