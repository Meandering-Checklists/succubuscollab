laneType = irandom(5);
spawnNumber = 4;
spawnDistance = 1;
spawnPoint = sprite_height;



switch (laneType) {
	case 0: // Enemy Moving Up and Fast
		spawnNumber = 3;
		spawnDistance = (room_height+sprite_height)/spawnNumber;
		repeat (spawnNumber) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = fastSpeed * -1;
				image_index = 0;
				image_angle += 180;
			}
			spawnPoint += spawnDistance;
		}
		break;

	case 1: // Enemy Moving Down and Fast
		spawnNumber = 3;
		spawnDistance = (room_height+sprite_height)/spawnNumber;
		repeat (spawnNumber) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = fastSpeed;
				image_index = 0;
			}
			spawnPoint += spawnDistance;
		}
		break;

	case 2: // Enemy Moving Up and Medium
		spawnNumber = 4;
		spawnDistance = (room_height+sprite_height)/spawnNumber;
		repeat (spawnNumber) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = mediumSpeed * -1;
				image_index = 1;
				image_angle += 180;
			}
			spawnPoint += spawnDistance;
		}
		break;

	case 3: // Enemy Moving Down and Medium
		spawnNumber = 4;
		spawnDistance = (room_height+sprite_height)/spawnNumber;
		repeat (spawnNumber) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = mediumSpeed;
				image_index = 1;
			}
			spawnPoint += spawnDistance;
		}
		break;

	case 4: // Enemy Moving Down and Slow
		spawnNumber = 5;
		spawnDistance = (room_height+sprite_height)/spawnNumber;
		repeat (spawnNumber) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = slowSpeed;
				image_index = 2;
			}
			spawnPoint += spawnDistance;
		}
		break;

	case 5: // Enemy Moving Up and Slow
		spawnNumber = 5;
		spawnDistance = (room_height+sprite_height)/spawnNumber;
		repeat (spawnNumber) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = slowSpeed *-1;
				image_index = 2;
				image_angle += 180;
			}
			spawnPoint += spawnDistance;
		}
		break;
}