/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);

var _select = keyboard_check_pressed(vk_enter);
var _mbclick = mouse_check_button_released(mb_left);

var _moveud = _down - _up;
var _moverl = _right - _left;

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);


if _moveud != 0 {
	index += _moveud
	
	var _size = array_length(menu);
	if (index < 0) index  = _size - 1;
	else if (index >= _size) index  = 0;
}
if _moverl != 0 {
	if(equipstaff)index2 += _moverl
	
	var _size = array_length(staff);
	if (index2 < 0) index2  = _size - 1;
	else if (index2 >= _size) index2  = 0;
}

switch(index){
	case 0:{
		if(menu_step != 0){
			if(_select || _mbclick && clickable_again){
				if(!equipstaff){
					equipstaff = 1;	
				}
				else{
					staffselected = index2;	
					equipstaff = 0;
				}
			}
		}

		
		if(equipstaff){ 
			if(point_in_rectangle(_mx, _my, width/2 - 60 , height/3, width/2 + 58, height/2 + 115)){
				clickable_again = 1;
				show_debug_message("tocou3")
				
			}
			else if(point_in_rectangle(_mx, _my, width/2 - 160 , height/2 - 32, width/2 - 96 , height/2 + 32)){
				lefthold = 1;
				righthold = 0;
				clickable_again = 0;
				show_debug_message("tocou")
				var _size = array_length(staff);
				if (index2 < 0) index2  = _size - 1;
				else if (index2 >= _size) index2  = 0;
				if(_mbclick) index2--;
			}
			else if(point_in_rectangle(_mx, _my, width/2 + 96, height/2 - 32, width/2 + 160, height/2 + 32)){
				lefthold = 0;
				righthold = 1;
				clickable_again = 0;
				show_debug_message("tocou2")
				var _size = array_length(staff);
				if (index2 < 0) index2  = _size - 1;
				else if (index2 >= _size) index2  = 0;
				if(_mbclick) index2++;
			}
			else clickable_again = 0;
		}
		break;	
		
	}
	case 1:{
		equipstaff = 0; 
		index2 = staffselected;
	break;
	}
	case 2:{
		equipstaff = 0;
		index2 = staffselected;
		if(_select || _mbclick && clickable_again){
			switch(staffselected){
				case 0:{
					obj_controller.staff_selected = "blue";
					break;
				}
				case 1:{
					obj_controller.staff_selected = "green";
					break;
				}
				case 2:{
					obj_controller.staff_selected = "red";
					break;
				}
			}
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			room_goto(Room1);
		}
	break;
	}
	
}

if(!equipstaff){
			if(point_in_rectangle(_mx, _my, width/2 + 50, height/2 + 25, width/2 + 95, height/2 + 210)){
				clickable_again = 1;
				index = 0;
			}
			else if(point_in_rectangle(_mx, _my, width/2 - 60 , height/2 + 25, width/2 + 58, height/2 + 115)){
				clickable_again = 1;
				index = 1;
			}
			else if(point_in_rectangle(_mx, _my, width/2 - 110 , height - 90, width/2 - 20 , height/2 + 340)){
				clickable_again = 1;
				index = 2;
			}
			
			else clickable_again = 0;

		}

/*
if(mouse_check_button_pressed(mb_left)) clickable_again = 0;
if(mouse_check_button_released(mb_left)) clickable_again = 1;
*/
show_debug_message("lh:" + string(lefthold));
show_debug_message("rh:" + string(righthold));
show_debug_message( width/2 + 160);
show_debug_message( height/2 + 200);
