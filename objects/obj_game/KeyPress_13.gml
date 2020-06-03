switch(room) {
	case rm_start:
		room_goto(rm_game);
		break;
	
	case rm_lose:
		score = 0;
		room_goto(rm_game);
		break;
		
	case rm_win:
		score = 0;
		room_goto(rm_game);
		break;
}