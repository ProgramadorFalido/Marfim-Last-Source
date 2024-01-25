/// @description


//PlaceHolder - change image_angle in mouse direction
angle = point_direction(x, y, mouse_x, mouse_y);

image_angle = angle;

var _mouse1 = mouse_check_button(mb_left); 
var _mouse1p = mouse_check_button_pressed(mb_left); 

var var3 = global.upgrades.bullet_size;

switch(staff_type){
	
	case "blue":{
		
		staff_damage = 4 + global.upgrades.bullet_damage;
		sprite_index = spr_staff_blue;
		shoot_timer = 60;
		
		if(canshoot){
			if(_mouse1){
				shoot(make_color_rgb(0, 255, 255), 2, 0.5, 0, 4);
				shoot_time = shoot_timer;
				canshoot = 0;
			}
		}
		
		show_debug_message(shoot_time);
		if(!canshoot){
			shoot_time -= 1 + global.upgrades.bullet_frequence;
			if(shoot_time <= 0){
				canshoot = 1;	
			}
		}
	break;}
	case "green":{
		sprite_index = spr_staff_green;
		staff_damage = 4 + global.upgrades.bullet_damage;
		shoot_timer = 35;
		if(canshoot){
			if(_mouse1){
				shoot(make_color_rgb(0, 255, 0), 2, 0.4, 1, 2);
				shoot_time = shoot_timer;
				canshoot = 0;
			}
		}
		
		
		if(!canshoot){
			shoot_time -= 1
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
		staff_damage = 8 + global.upgrades.bullet_damage;
		//shoot_timer = 60 * global.upgrades.bullet_frequence;
	/*	if(canshoot){*/
			if(_mouse1 && !attacking){
				if(!slash || slash == 2){
					attacking = 1;
					image_index = 0;
					slash = 1;
					slashbullet(2, 0.5, 0, 3);
					ds_list_clear(atklist);
				}
				else if(slash == 1)
				{
					attacking = 1;
					image_index = 0;
					slash = 2;
					slashbullet(2, 0.5, 0, 3);
					ds_list_clear(atklist);
				}

			}
			if(attacking) {
				if(slash == 1) {
					image_xscale = 1 + (0.5 * var3);
					image_yscale = image_xscale;
					sprite_index = spr_staff_red_slash1;
					var _list = ds_list_create();
					var _num = instance_place_list(x, y, obj_enemy_1, _list, false);

					if _num > 0{
					    for (var i = 0; i < _num; ++i;){
					        var _enemyid = (_list[| i]);
							if(ds_list_find_index(atklist, _enemyid) == -1){
								ds_list_add(atklist, _enemyid);
								_enemyid.life -= staff_damage;
								show_debug_message("dano na entidade: " + string(_enemyid) + string(staff_damage));
							}
					    }
					}

					
					mask_index = spr_staff_red_mask;
					if (image_index+image_speed >= image_number) {
						ds_list_destroy(_list);	
						attacking = 0;	 
					}
				}
				if(slash == 2) {
					image_xscale = 1 + (0.5 * var3);
					image_yscale = image_xscale;
					sprite_index = spr_staff_red_slash2;
					var _list = ds_list_create();
					var _num = instance_place_list(x, y, obj_enemy_1, _list, false);

					if _num > 0{
					    for (var i = 0; i < _num; ++i;){
					        var _enemyid = (_list[| i]);
							if(ds_list_find_index(atklist, _enemyid) == -1){
								ds_list_add(atklist, _enemyid);
								_enemyid.life -= staff_damage;
								show_debug_message("dano na entidade: " + string(_enemyid) + "" + string(staff_damage));
							}
					    }
					}

					
					mask_index = spr_staff_red_mask;
					if (image_index+image_speed >= image_number) {
						ds_list_destroy(_list);	
						attacking = 0;	 
					}
				}
			}					
	
			//show_debug_message(image_speed);
			shoot_timer = 1;
			//show_debug_message("dano do cajado : " + string(staff_damage))
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
