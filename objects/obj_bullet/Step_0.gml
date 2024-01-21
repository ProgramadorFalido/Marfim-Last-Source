/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_colider)){
	instance_destroy();
}
if(!isfrag){
	with (instance_place(x, y, obj_bullet_enemy)) {
	   if (ds_list_find_index(other.list, id) == -1) {
		  bullet_health--;
	      ds_list_add(other.list, id);
	   }
	}
}

if (target)
{
	if (instance_exists(target)){
		/// @description Homing Missile Step

		// Vector angle between homing missile and target
		var _point_difference = point_direction(x, y, target.x, target.y);

		// Sin in degrees of vector angle minus current direction
		var _angle_direction = dsin(_point_difference - direction);

		// Determine which direction to turn and set direction
		if(_angle_direction > 0)
		{
		direction = direction + turn_speed;
		}
		else if(_angle_direction < 0)
		{
		direction = direction - turn_speed;
		}
		// Set angle to direction
		image_angle = direction;

		// Set speed
		x = x + (dcos(direction) * velocity);
		y = y - (dsin(direction) * velocity);
	}
}