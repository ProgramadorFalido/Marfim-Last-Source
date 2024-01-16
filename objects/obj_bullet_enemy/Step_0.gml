/// @description Insert description here
// You can write your code in this editor



if(place_meeting(x, y, obj_colider)){
	instance_destroy();
}

with (instance_place(x, y, obj_bullet)) {
   if (ds_list_find_index(other.list, id) == -1) {
	  bullet_health--;
      ds_list_add(other.list, id);
   }
}
