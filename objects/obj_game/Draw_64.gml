switch(room) {
	case rm_game:
		draw_text(25, 25, "Score: " + string(score));
		draw_text(25, 10, "Level: " + string(gameLevel));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_fuchsia;
		draw_text_transformed_color(room_width/2, 200, "SUCCUBUS", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, 400, ">>>  PRESS ENTER TO START  <<<");
		draw_set_halign(fa_left);
		break;
	
	case rm_lose:
		draw_set_halign(fa_center);
		var c = c_blue;
		draw_text_transformed_color(room_width/2, 200, "LOSER", 2, 2, 0, c, c, c, c, 1);
		draw_text(room_width/2, 320, "Score: " + string(score));
		draw_text(room_width/2, 400, ">  PRESS ENTER TO TRY AGAIN  <");
		draw_text(room_width/2, 450, ">  OR SPACE TO EXIT  <");
		draw_set_halign(fa_left);
		break;
	
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(room_width/2, 200, "WINNER", 2, 2, 0, c, c, c, c, 1);
		draw_text(room_width/2, 320, "Score: " + string(score));
		draw_text(room_width/2, 400, ">  PRESS ENTER TO TRY AGAIN  <");
		draw_text(room_width/2, 450, ">  OR SPACE TO EXIT  <");
		draw_set_halign(fa_left);
		break;
		
	case rm_cutscene:
		draw_text(room_width/2, room_height/2, "Level: " + string(gameLevel) + " Completed");
		draw_text(room_width/2, room_height/2 + 50, "Score: " + string(score));
		draw_text(room_width/2, room_height/2 + 80, "Press Enter To Play Next Level")
		break;
		

		
}