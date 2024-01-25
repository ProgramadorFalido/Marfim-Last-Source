/// @description Insert description here
// You can write your code in this editor
if (obj_menu_controller.menu_step){
	time ++;
	if(time < timer) y = lerp(y, -200, 0.06);
	var _bg1 = layer_get_id("Background")
	layer_y(_bg1, lerp(layer_get_y(_bg1), 40, 0.06));
}
else {
	 y = lerp(y, inity, 0.06);
	 time = 0;
	 var _bg1 = layer_get_id("Background")
	 layer_y(_bg1, lerp(layer_get_y(_bg1), 700, 0.06));
}





