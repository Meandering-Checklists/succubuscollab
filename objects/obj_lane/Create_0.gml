spawnPoint = irandom(64);
laneType = irandom(5);
distanceBetweenFast = 300;
distanceBetweenMedium = 250;
distanceBetweenSlow = 200;

switch (laneType) {
	case 0: // Enemy Moving Up and Fast
		while (spawnPoint < room_height) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = fastSpeed * -1;
				image_index = 0;
				image_angle += 180;
			}
			spawnPoint += distanceBetweenFast;
		}
		break;

	case 1: // Enemy Moving Down and Fast
		while (spawnPoint < room_height) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = fastSpeed;
				image_index = 0;
			}
			spawnPoint += distanceBetweenFast;
		}
		break;

	case 2: // Enemy Moving Up and Medium
		while (spawnPoint < room_height) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = mediumSpeed * -1;
				image_index = 1;
				image_angle += 180;
			}
			spawnPoint += distanceBetweenMedium;
		}
		break;

	case 3: // Enemy Moving Down and Medium
		while (spawnPoint < room_height) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = mediumSpeed;
				image_index = 1;
			}
			spawnPoint += distanceBetweenMedium;
		}
		break;

	case 4: // Enemy Moving Down and Slow
		while (spawnPoint < room_height) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = slowSpeed;
				image_index = 2;
			}
			spawnPoint += distanceBetweenSlow;
		}
		break;

	case 5: // Enemy Moving Up and Slow
		while (spawnPoint < room_height) {
			with (instance_create_layer(x,spawnPoint,"Instances",obj_enemy)) {
				moveSpeed = slowSpeed *-1;
				image_index = 2;
				image_angle += 180;
			}
			spawnPoint += distanceBetweenSlow;
		}
		break;
}