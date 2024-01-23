/// @description Insert description here
// You can write your code in this editor
if (obj_menu_controller.menu_step){
	time ++;
	if(time < timer) y = lerp(y, -200, 0.06);
}
else {
	 y = lerp(y, inity, 0.06);
	 time = 0;
}





