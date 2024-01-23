/// @description



//horizontal colision
if (place_meeting(x + horizontal_speed,y,obj_colider)){
   while(!place_meeting(x + sign(horizontal_speed), y, obj_colider)){
      x += sign(horizontal_speed);
   }
   horizontal_speed = 0;
}
x += horizontal_speed;

//Vertical Collision
if (place_meeting(x, y + vertical_speed,obj_colider)){
   while(!place_meeting(x, y + sign(vertical_speed), obj_colider)){
      y += sign(vertical_speed);
   }
   vertical_speed = 0;
}
y += vertical_speed;
//---------------------------------------------------------------------

//horizontal colision
if (place_meeting(x + horizontal_speed,y,obj_colider)){
   while(!place_meeting(x + sign(horizontal_speed), y, obj_colider)){
      x += sign(horizontal_speed);
   }
   horizontal_speed = 0;
}

if (place_meeting(x + horizontal_speed,y,obj_enemy_1)){
   while(!place_meeting(x + sign(horizontal_speed), y, obj_enemy_1)){
      x += sign(horizontal_speed);
   }
   horizontal_speed = 0;
}
x += horizontal_speed;

if(player_life <= 0) state = "dead";

player_life = clamp(player_life, 0, 99999999);

obj_staff.x = x;
obj_staff.y = y;