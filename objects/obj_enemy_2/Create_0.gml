/// @description Insert description here
// You can write your code in this editor


horizontal_speed = 0;
lhorizontal_speed = 0;
vertical_speed = 0;
angle = point_direction(x, y, obj_player.x, obj_player.y);
alpha = 1;
life = 32;
lifetotal = life;
image_angle = angle;

distance = irandom_range(-300, 300);
ydistance = irandom_range(-10, 10);

yfixdistance = 350;

shootcolor = make_color_rgb(255, 0, 60);

shoot_timer = 0;
shoot_time = 0;

staff_damage = 2;

canshoot = 1;


function shoot(_color, _health){
	var _lhx = x + lengthdir_x(20, angle);
	var _lhy = y + lengthdir_y(20, angle);
	
	var _bullet = instance_create_layer(_lhx, _lhy, "shoots", obj_bullet_enemy);
	_bullet.speed = 3;
	_bullet.direction = angle;
	_bullet.damage = staff_damage;
	_bullet.image_blend = _color;
	_bullet.image_xscale = 0.5;
	_bullet.image_yscale = 0.5;
	_bullet.bullet_health = _health
	_bullet.shooter = id;
}

function frag(_color, _isfrag){
	var _lhx = x + lengthdir_x(20, angle);
	var _lhy = y + lengthdir_y(20, angle);
	
	var _bullet = instance_create_layer(_lhx, _lhy, "shoots", obj_bullet);
	_bullet.speed = 4;
	_bullet.direction = random_range(0, 360);
	_bullet.image_xscale = 0.8;
	_bullet.image_yscale = 0.8;
	_bullet.damage = global.upgrades.frag_damage;
	_bullet.image_blend = _color;
	_bullet.isfrag = _isfrag;
}