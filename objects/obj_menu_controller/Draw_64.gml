/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


	if(!menu_step)draw_text(room_width/2,room_height/2 + 160, "Press any button");
	else{ 
		draw_sprite_ext(spr_player, 0, room_width/2, room_height/2 + 130, 2, 2, 0, c_white, 1);
		
		
		
		switch(index2){
			case 0: {
				draw_text(room_width/2,room_height/2 + 260, staff[0]);
				draw_sprite_ext(spr_staff_blue, 0, room_width/2 + 75, room_height/2 + 160, 1.5, 1.5, 90, c_white, 1);
			break;
			}
			case 1:{
				draw_text(room_width/2,room_height/2 + 260, staff[1]);
				draw_sprite_ext(spr_staff_green, 0, room_width/2 + 75, room_height/2 + 160, 1.5, 1.5, 90, c_white, 1);
			break;
			}
			case 2:{
				draw_text(room_width/2,room_height/2 + 260, staff[2]);
				draw_sprite_ext(spr_staff_red, 0, room_width/2 + 75, room_height/2 + 160, 1.5, 1.5, 90, c_white, 1);
			break;
			}
			default: {
				draw_text(room_width/2,room_height/2 + 260, staff[0]);
				draw_sprite_ext(spr_staff_blue, 0, room_width/2 + 75, room_height/2 + 160, 1.5, 1.5, 90, c_white, 1);
			break;
			}
		}
		draw_text(room_width/2 - 64,room_height/2 + 320, menu[2]);
		draw_text(room_width/2 + 64,room_height/2 + 320, menu[3]);
	}
	
	
draw_set_halign(fa_left);
draw_set_valign(fa_top);
