/// @description Insert description here
// You can write your code in this editor
/*if(place_meeting(x, y, obj_colider)){
	instance_destroy();
}*/

with (instance_place(x, y, obj_enemy_1)) {
		if (ds_list_find_index(other.list, id) == -1) {
			life -= global.upgrades.bullet_damage / 2.5;
			ds_list_add(other.list, id);
	}	
}

// Set angle to direction
image_angle = direction;

// Set speed
x = x + (dcos(direction) * velocity);
y = y - (dsin(direction) * velocity);

life --;
image_alpha = life / 25;

if (life <= 0) instance_destroy();