/// @description Insert description here
// You can write your code in this editor
damage = 0;
bullet_health = 1;
isfrag = 0;
bullet_size_multiplyer = 1;
target = 0;
if(!isfrag) list = ds_list_create();
turn_speed = 1;
velocity = 1;
image_xscale = image_xscale * global.upgrades.bullet_size;
image_yscale = image_xscale;

