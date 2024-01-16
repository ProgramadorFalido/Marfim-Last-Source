/// @description Insert description here
// You can write your code in this editor


spawn_location_x = x + random_range(-500, 500)


enemys = instance_number(obj_enemy_1)
if(!global.upgrading){
	if(!spawning){

		spawn_time ++;
		if(spawn_time >= spawn_timer){
			spawning = 1;	
		}
	}
	else if(enemy_limit != 0){
		enemy_limit --;
		spawn_time = 0;
		var _enemy = instance_create_layer(spawn_location_x, y, "enemys", obj_enemy_1);
		spawning = 0;
	}
}

if(enemy_limit  = 0){
	if(!instance_number(obj_enemy_1))
		{
			global.upgrading = true;
			global.in_upgrade = true;
			instance_activate_object(obj_upgrader);
			obj_upgrader.visible = true;
			wave ++;
			enemy_limit = wave_limit + wave;
		}
}