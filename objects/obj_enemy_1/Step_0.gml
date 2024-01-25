/// @description Insert description here
// You can write your code in this editor
if(!global.upgrading){
	if(life <= 0)
	{
		for(var _i = 0; _i != global.upgrades.bullet_frag; _i++)
		{
			frag(make_color_rgb(0, 255, 0), 1);
		}
		instance_destroy();
	}
	angle = point_direction(x, y, obj_player.x, obj_player.y);


	if(x >= obj_player.x + distance){
		horizontal_speed = lerp(horizontal_speed, -3, 0.005);
	}
	else if(x <= obj_player.x - distance){
		horizontal_speed = lerp(horizontal_speed, 3, 0.005);
	}



	if(y < obj_player.y - yfixdistance  + ydistance){
		vertical_speed = lerp(vertical_speed, 3, 0.009);
	}
	else if(y > obj_player.y - yfixdistance + ydistance){
		vertical_speed = lerp(vertical_speed, -3, 0.009);
	}
	
	shoot_timer = 200 * random_range(0.7, 1);
	if(canshoot){
		shoot(shootcolor, 1);
		shoot_time = shoot_timer;
		canshoot = 0;
	}

	if(!canshoot){
		shoot_time --;
		if(shoot_time <= 0){
			canshoot = 1;	
		}
	}
}