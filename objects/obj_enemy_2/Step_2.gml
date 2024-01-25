/// @description Insert description here
// You can write your code in this editor
/// @description


//horizontal colision
if (place_meeting(x + horizontal_speed,y,obj_colider)){
   while(!place_meeting(x + sign(horizontal_speed), y, obj_colider)){
      x += sign(horizontal_speed);
   }
   horizontal_speed = 0;
}

//Vertical Collision
if (place_meeting(x, y + vertical_speed,obj_colider)){
   while(!place_meeting(x, y + sign(vertical_speed), obj_colider)){
      y += sign(vertical_speed);
   }
   vertical_speed = 0;
}
x += horizontal_speed;
y += vertical_speed;
//---------------------------------------------------------------------
