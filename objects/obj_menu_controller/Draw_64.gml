/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


	if(!menu_step)draw_text(width/2,height/2 + 160, "Press any button");
	else{ 
		draw_text(width/2 - 64,height/2 + 320, menu[2]);
		draw_text(width/2 + 64,height/2 + 320, menu[3]);

		draw_sprite_ext(spr_player, 0, width/2, height/2 + 130, 2, 2, 0, c_white, 1);
		if(index != 0){
			switch (staffselected){
				case 0: {
					draw_sprite_ext(spr_staff_blue, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
					break;
				}
				case 1:{
					draw_sprite_ext(spr_staff_green, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
					break;
				}
				case 2:{
					draw_sprite_ext(spr_staff_red, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
					break;
				}
				default: {
					draw_sprite_ext(spr_staff_blue, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
					break;
				}
			}
		}
		
		
		if(equipstaff){
			var _stposx = width/2;
			var _stposy = height/2 + 64;
			var _fnsize = 2.5;
			rtposx = lerp(rtposx, _stposx, 0.08);
			rtposy = lerp(rtposy, _stposy, 0.08);
			rtsize = lerp(rtsize, _fnsize, 0.08);
			draw_sprite_ext(spr_arrow, 0,width/2 + 128,height/2, 1, 1, 0, c_white, 1);
			draw_sprite_ext(spr_arrow, 0,width/2 - 128,height/2, -1, 1, 0, c_white, 1);
		}
		else{
			rtposx = lerp(rtposx, width/2 + 75, 0.08);
			rtposy = lerp(rtposy, height/2 + 160, 0.08);
			rtsize = lerp(rtsize, 1.5, 0.08);	
		}
		
		switch(index){
			case 0:{ //staffs
				if(!equipstaff){
					draw_set_color(c_teal);
					draw_text(width/2,height/2 - 100, menu[0]);
					draw_set_color(c_white);
					
					draw_roundrect_ext(width/2 + 50, height/2 + 25, width/2 + 95, height/2 + 210, 10,10, true)
				}
					switch(index2){
						case 0: {
							draw_text(width/2,height/2 + 260, staff[0]);
							draw_sprite_ext(spr_staff_blue, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
						break;
						}
						case 1:{
							draw_text(width/2,height/2 + 260, staff[1]);
							draw_sprite_ext(spr_staff_green, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
						break;
						}
						case 2:{
							draw_text(width/2,height/2 + 260, staff[2]);
							draw_sprite_ext(spr_staff_red, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
						break;
						}
						default: {
							draw_text(width/2,height/2 + 260, staff[0]);
							draw_sprite_ext(spr_staff_blue, 0, rtposx, rtposy, rtsize, rtsize, 90, c_white, 1);
						break;
						}
					}
				break;
			}
			case 1:{ //hats
				draw_roundrect_ext(width/2 - 60 , height/2 + 25, width/2 + 58, height/2 + 115, 10,10, true)
				draw_set_color(c_teal);
				draw_text(width/2,height/2 - 100, menu[1] + " work in progress");
				draw_set_color(c_white);
				break;
			}
			case 2:{
				draw_set_color(c_teal);
				draw_text(width/2 - 64,height/2 + 320, menu[2]);
				draw_set_color(c_white);
				break;
			}
			case 3:{
				draw_set_color(c_teal);
				draw_text(width/2 + 64,height/2 + 320, menu[3]);
				draw_set_color(c_white);
				break;
			}
		}
		
	}

/*
draw_roundrect_ext(width/2 - 160 , height/2 - 32, width/2 - 96 , height/2 + 32, 10,10, true)
draw_roundrect_ext(width/2 + 96, height/2 - 32, width/2 + 160, height/2 + 32, 10,10, true)
draw_roundrect_ext(width/2 - 60 , height/3 , width/2 + 58, height/2 + 115, 10,10, true)
draw_roundrect_ext(width/2 - 110 , height - 90, width/2 - 20 , height/2 + 340, 10,10, true)


//draw_rectangle(723 , height/2 - 160, 643, height/2 + 160, true);
