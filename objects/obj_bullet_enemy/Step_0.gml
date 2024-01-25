/// @description Insert description here
// You can write your code in this editor





with (instance_place(x, y, obj_bullet)) {
   if (ds_list_find_index(other.list, id) == -1) {
	  bullet_health--;
      ds_list_add(other.list, id);
   }
}


if(global.upgrading) instance_destroy();