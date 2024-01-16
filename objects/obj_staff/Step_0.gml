/// @description


//PlaceHolder - change image_angle in mouse direction
angle = point_direction(x, y, mouse_x, mouse_y);

image_angle = angle;

var _mouse1 = mouse_check_button(mb_left); 

switch(staff_type){
	
	case "blue":{
		
		staff_damage = 2;
		sprite_index = spr_staff_blue;
		shoot_timer = 60;
		var percentage = shoot_time;
		shoot_timer = shoot_timer - (percentage * global.upgrades.bullet_frequence);
		
		
		if(canshoot){
			if(_mouse1){
				shoot(make_color_rgb(0, 255, 255), 2, 0.5, 0, 5);
				shoot_time = shoot_timer;
				canshoot = 0;
			}
		}
		
		
		if(!canshoot){
			shoot_time --;
			if(shoot_time <= 0){
				canshoot = 1;	
			}
		}
	break;}
	case "green":{
		sprite_index = spr_staff_green;
		staff_damage = 1;
		shoot_timer = 60 * global.upgrades.bullet_frequence;
		if(canshoot){
			if(_mouse1){
				shoot(make_color_rgb(0, 255, 0), 2, 0.4, 1, 2);
				shoot_time = shoot_timer;
				canshoot = 0;
			}
		}
		
		
		if(!canshoot){
			shoot_time --;
			if(shoot_time <= 0){
				canshoot = 1;	
			}
		}
	break;}
	
}