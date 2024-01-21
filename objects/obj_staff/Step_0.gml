/// @description


//PlaceHolder - change image_angle in mouse direction
angle = point_direction(x, y, mouse_x, mouse_y);

image_angle = angle;

var _mouse1 = mouse_check_button(mb_left); 
var _mouse1p = mouse_check_button_pressed(mb_left); 

var var3 = global.upgrades.bullet_size;

switch(staff_type){
	
	case "blue":{
		
		staff_damage = 2;
		sprite_index = spr_staff_blue;
		shoot_timer = 45;
		
		
		if(canshoot){
			if(_mouse1){
				shoot(make_color_rgb(0, 255, 255), 2, 0.5, 0, 3);
				shoot_time = shoot_timer;
				canshoot = 0;
			}
		}
		
		
		if(!canshoot){
			shoot_time -= 1 + global.upgrades.bullet_frequence;
			if(shoot_time <= 0){
				canshoot = 1;	
			}
		}
	break;}
	case "green":{
		sprite_index = spr_staff_green;
		staff_damage = 1;
		shoot_timer = 35;
		if(canshoot){
			if(_mouse1){
				shoot(make_color_rgb(0, 255, 0), 2, 0.4, 1, 2);
				shoot_time = shoot_timer;
				canshoot = 0;
			}
		}
		
		
		if(!canshoot){
			shoot_time -= 1 + global.upgrades.bullet_frequence;
			if(shoot_time <= 0){
				canshoot = 1;	
			}
		}
		
	break;} 
		case "red":{
		if(!attacking){
			image_xscale = 1;
			image_yscale = image_xscale;
			sprite_index = spr_staff_red;
		}
		staff_damage = 1;
		//shoot_timer = 60 * global.upgrades.bullet_frequence;
	/*	if(canshoot){*/
			if(_mouse1 && !attacking){
				if(!slash || slash == 2){
					attacking = 1;
					image_index = 0;
					slash = 1;
					slashbullet(2, 0.5, 0, 5);
				}
				else if(slash == 1)
				{
					attacking = 1;
					image_index = 0;
					slash = 2;
					slashbullet(2, 0.5, 0, 5);
				}

			}
			if(attacking) {
				if(slash == 1) {
					image_xscale = 1 + (0.5 * var3);
					image_yscale = image_xscale;
					sprite_index = spr_staff_red_slash1;
							with (instance_place(x, y, obj_enemy_1)) {
								if (ds_list_find_index(other.list, id) == -1) {
								life -= global.upgrades.bullet_damage;
								ds_list_add(other.list, id);
							}	
					}
				if (image_index+image_speed >= image_number) {
					attacking = 0;	 
				}
			   

				}
				if(slash == 2) {
					image_xscale = 1 + (0.5 * var3);
					image_yscale = image_xscale;
					sprite_index = spr_staff_red_slash2;
							with (instance_place(x, y, obj_enemy_1)) {
								if (ds_list_find_index(other.list, id) == -1) {
								life -= global.upgrades.bullet_damage;
								ds_list_add(other.list, id);
							}	
						}
						
				}
				 if (image_index+image_speed >= image_number) {
					attacking = 0;	 
				}
			}
			
			show_debug_message(image_speed);
			shoot_timer = 1;
			
			image_speed = 1 + (0.5 * global.upgrades.bullet_frequence);
			
			
			
		//}
		
		/*
		if(!canshoot){
			shoot_time --;
			if(shoot_time <= 0){
				canshoot = 1;	
			}
		}
		*/
	break;}
}