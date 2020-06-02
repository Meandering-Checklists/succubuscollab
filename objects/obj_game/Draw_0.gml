switch(room) {
	case rm_start:
		var c = c_fuchsia;
		draw_text_transformed_color(room_width/2, 200, "SUCCUBUS", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, 400, ">>>  PRESS ENTER TO START  <<<");
		break;
	
	case rm_lose:
		var c = c_blue;
		draw_text_transformed_color(room_width/2, 250, "LOSER", 2, 2, 0, c, c, c, c, 1);
		draw_text(room_width/2, 400, ">  PRESS ENTER TO TRY AGAIN  <");
		draw_text(room_width/2, 450, ">  OR SPACE TO EXIT  <");
		break;
	
	case rm_win:
		var c = c_red;
		draw_text_transformed_color(room_width/2, 250, "WINNER", 2, 2, 0, c, c, c, c, 1);
		draw_text(room_width/2, 400, ">  PRESS ENTER TO TRY AGAIN  <");
		draw_text(room_width/2, 450, ">  OR SPACE TO EXIT  <");
		break;
		
	case rm_game:
		draw_text(50,20,"Level " + string(gameLevel));
		break;
}