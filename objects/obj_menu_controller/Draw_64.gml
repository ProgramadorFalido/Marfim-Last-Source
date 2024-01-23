/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

	if(!menu_step)draw_text(room_width/2,room_height/2 + 160, "Press any button");
	else{ 
		draw_text(room_width/2 - 64,room_height/2 + 320, menu[2]);
		draw_text(room_width/2 + 64,room_height/2 + 320, menu[3]);

		draw_sprite_ext(spr_player, 0, room_width/2, room_height/2 + 130, 2, 2, 0, c_white, 1);
		if(index != 0){
			switch (staffselected){
				case 0: {
					draw_sprite_ext(spr_staff_blue, 0, room_width/2 + 75, room_height/2 + 160, 1.5, 1.5, 90, c_white, 1);
					break;
				}
				case 1:{
					draw_sprite_ext(spr_staff_green, 0, room_width/2 + 75, room_height/2 + 160, 1.5, 1.5, 90, c_white, 1);
					break;
				}
				case 2:{
					draw_sprite_ext(spr_staff_red, 0, room_width/2 + 75, room_height/2 + 160, 1.5, 1.5, 90, c_white, 1);
					break;
				}
				default: {
					draw_sprite_ext(spr_staff_blue, 0, room_width/2 + 75, room_height/2 + 160, 1.5, 1.5, 90, c_white, 1);
					break;
				}
			}
		}
		
		
		if(equipstaff){
			var _stposx = room_width/2;
			var _stposy = room_height/2;
			var _fnsize = 2.5;
			rtposx = lerp(rtposx, _stposx, 0.08);
			rtposy = lerp(rtposy, _stposy, 0.08);
			rtsize = lerp(rtsize, _fnsize, 0.08);
		}
		else{
			rtposx = lerp(rtposx, room_width/2 + 75, 0.08);
			rtposy = lerp(rtposy, room_height/2 + 160, 0.08);
			rtsize = lerp(rtsize, 1.5, 0.08);	
		}
		
		switch(index){
			case 0:{ //staffs
				if(!equipstaff){
					draw_set_color(c_teal);
					draw_text(room_width/2,room_height/2 - 100, menu[0]);
					draw_set_color(c_white);
					
					draw_roundrect_ext(room_width/2 + 50, room_height/2 + 25, room_width/2 + 95, room_height/2 + 210, 10,10, true)
				}
					switch(index2){
						case 0: {
							draw_text(room_width/2,room_height/2 + 260, staff[0]);
							draw_sprite_ext(spr_staff_blue, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
						break;
						}
						case 1:{
							draw_text(room_width/2,room_height/2 + 260, staff[1]);
							draw_sprite_ext(spr_staff_green, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
						break;
						}
						case 2:{
							draw_text(room_width/2,room_height/2 + 260, staff[2]);
							draw_sprite_ext(spr_staff_red, 0, rtposx, rtposy + 36, rtsize, rtsize, 90, c_white, 1);
						break;
						}
						default: {
							draw_text(room_width/2,room_height/2 + 260, staff[0]);
							draw_sprite_ext(spr_staff_blue, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
						break;
						}
					}
				break;
			}
			case 1:{ //hats
				draw_set_color(c_teal);
				draw_text(room_width/2,room_height/2 - 100, menu[1] + " work in progress");
				draw_set_color(c_white);
				break;
			}
			case 2:{
				draw_set_color(c_teal);
				draw_text(room_width/2 - 64,room_height/2 + 320, menu[2]);
				draw_set_color(c_white);
				break;
			}
			case 3:{
				draw_set_color(c_teal);
				draw_text(room_width/2 + 64,room_height/2 + 320, menu[3]);
				draw_set_color(c_white);
				break;
			}
		}
		
	}