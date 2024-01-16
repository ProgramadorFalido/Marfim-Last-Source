/// @description Insert description here
// You can write your code in this editor

angle = point_direction(x, y, mouse_x, mouse_y);

shoot_timer = 0;
shoot_time = 0;

staff_type = "blue";

staff_damage = 2;

canshoot = 1;

function shoot(_color, _health, _bsm, _havetarget, _speed){
	var _lhx = x + lengthdir_x(60, angle);
	var _lhy = y + lengthdir_y(60, angle);
	
	var _bullet = instance_create_layer(_lhx, _lhy, "shoots", obj_bullet);
	_bullet.speed = _speed * global.upgrades.bullet_speed;
	_bullet.direction = image_angle;
	_bullet.damage = staff_damage + global.upgrades.bullet_damage;
	_bullet.image_blend = _color;
	_bullet.bullet_health = _health;
	_bullet.image_xscale = image_xscale*  _bsm;
	if(_havetarget){
		with(_bullet){
			target = instance_nearest(x, y, obj_enemy_1);
			velocity = 1 * global.upgrades.bullet_speed;
			turn_speed = 1 * global.upgrades.bullet_speed;
		}
	}
}