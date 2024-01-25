/// @description Insert description here
// You can write your code in this editor
/*if(place_meeting(x, y, obj_colider)){
	instance_destroy();
}*/

var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_enemy_1, _list, false);

if _num > 0{
    for (var i = 0; i < _num; ++i;){
        var _enemyid = (_list[| i]);
		if(ds_list_find_index(atklist2, _enemyid) == -1){
			ds_list_add(atklist2, _enemyid);
			_enemyid.life -= damage;
			show_debug_message("dano com slash na entidade: " + string(_enemyid));
		}
    }
}
ds_list_destroy(_list)
// Set angle to direction
image_angle = direction;

// Set speed
x = x + (dcos(direction) * velocity);
y = y - (dsin(direction) * velocity);

life --;
image_alpha = life / total_life;

if (life <= 0) instance_destroy();