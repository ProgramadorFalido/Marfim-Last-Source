/// @description



//Inputs

var _left, _right, _jump;

//left input
_left = keyboard_check(ord("A"));
//right input
_right = keyboard_check(ord("D"));
//jump input
_jump = keyboard_check_pressed(vk_space);

//----------------------------------------------------


if(instance_exists(obj_upgrade_controller)){
	player_speed = 2 + (2 * global.upgrades.player_speed);
}
switch(state){
	case "normal":{
		horizontal_speed = (_right - _left) * player_speed;

		if(place_meeting(x, y + 1, obj_colider)) inground = 1;
		else inground = 0;

		if(!inground){
			vertical_speed += grav;
		}
		else{
			if(_jump){
				vertical_speed += jump_speed;
			}
		}
		break;
	}
	case "dead":{
		if(!inground){
			vertical_speed += grav;
		}
		image_alpha = 0.5;
		image_angle = -90;
		break;
	}
}