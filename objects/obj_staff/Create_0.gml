/// @description Insert description here
// You can write your code in this editor

angle = point_direction(x, y, mouse_x, mouse_y);

shoot_timer = 0;
shoot_time = 0;
staff_type = obj_controller.staff_selected;

attacking = 0;
slash = 0;

staff_damage = 2 ;

canshoot = 1;

list = ds_list_create();

function shoot(_color, _health, _bsm, _havetarget, _speed){
	var _lhx = x + lengthdir_x(60, angle);
	var _lhy = y + lengthdir_y(60, angle);
	
	var _bullet = instance_create_layer(_lhx, _lhy, "shoots", obj_bullet);
	_bullet.speed = _speed * global.upgrades.bullet_speed;
	_bullet.direction = image_angle;
	_bullet.damage = staff_damage + global.upgrades.bullet_damage;
	_bullet.image_blend = _color;
	_bullet.bullet_health = _health;
	if(_havetarget){
		with(_bullet){
			target = instance_nearest(x, y, obj_enemy_1);
			velocity = 1 * global.upgrades.bullet_speed;
			turn_speed = 1 * global.upgrades.bullet_speed;
		}
	}
}

function slashbullet(_health, _bsm, _havetarget, _speed){
	var _lhx = x + lengthdir_x(60, angle);
	var _lhy = y + lengthdir_y(60, angle);
	
	var _bullet = instance_create_layer(_lhx, _lhy, "shoots", obj_slash);
	_bullet.direction = image_angle;
	_bullet.speed = _speed * global.upgrades.bullet_speed;
	_bullet.damage = staff_damage + global.upgrades.bullet_damage;
	_bullet.bullet_health = _health;
	if(_havetarget){
		with(_bullet){
			target = instance_nearest(x, y, obj_enemy_1);
			velocity = 1 * global.upgrades.bullet_speed;
			turn_speed = 1 * global.upgrades.bullet_speed;
		}
	}
}