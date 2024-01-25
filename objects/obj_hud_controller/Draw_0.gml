/// @description Insert description here
// You can write your code in this editor
draw_healthbar(50, 30, 1600, 50, (obj_player.player_life /  obj_player.totallife) * 20, c_red, c_red, c_red, 0, false, false);
draw_text(50, 30,string(obj_player.player_life) + "/" + string(obj_player.totallife));

draw_text(550, 40,"number of enemys: " + string(obj_enemy_spawn.enemies_spawned));

draw_text(550, 64,"number of wave: " + string(obj_enemy_spawn.roundtime));

draw_text(50, 500,"life upgrade: " + string(global.upgrades.player_health));
draw_text(50, 520,"jump upgrade: " + string(global.upgrades.player_jump));
draw_text(50, 540,"bulletsize upgrade: " + string(global.upgrades.bullet_size));
draw_text(50, 640,"damage upgrade: " + string(global.upgrades.bullet_damage));
draw_text(50, 620,"attspd upgrade: " + string(global.upgrades.bullet_frequence/0.12));
draw_text(50, 600,"stability upgrade: " + string(global.upgrades.bullet_stability));
draw_text(50, 580,"playerspd upgrade: " + string(global.upgrades.player_speed));
draw_text(50, 560,"fragment. upgrade: " + string(global.upgrades.bullet_frag));