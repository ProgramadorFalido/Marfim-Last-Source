/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(50, 30, 20 * obj_player.player_life, 50, c_red, c_red, c_red, c_red, false);


draw_text(550, 40,"number of enemys: " + string(obj_enemy_spawn.enemys));

draw_text(550, 64,"number of wave: " + string(obj_enemy_spawn.wave));

draw_text(50, 540,"bulletsize upgrade: " + string(global.upgrades.bullet_size));
draw_text(50, 640,"damage upgrade: " + string(global.upgrades.bullet_damage));
draw_text(50, 620,"attspd upgrade: " + string(global.upgrades.bullet_frequence/0.15));
draw_text(50, 600,"stability upgrade: " + string(global.upgrades.bullet_stability));
draw_text(50, 580,"playerspd upgrade: " + string(global.upgrades.player_speed));
draw_text(50, 560,"fragment. upgrade: " + string(global.upgrades.bullet_frag));