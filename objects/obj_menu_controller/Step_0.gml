/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _left = keyboard_check_pressed(vk_left);
var _right = keyboard_check_pressed(vk_right);

var _select = keyboard_check_pressed(vk_enter);


var _moveud = _down - _up;
var _moverl = _right - _left;

if _moveud != 0 {
	index += _moveud
	
	var _size = array_length(menu);
	if (index < 0) index  = _size - 1;
	else if (index >= _size) index  = 0;
}
if _moverl != 0 {
	index2 += _moverl
	
	var _size = array_length(staff);
	if (index2 < 0) index2  = _size - 1;
	else if (index2 >= _size) index2  = 0;
}