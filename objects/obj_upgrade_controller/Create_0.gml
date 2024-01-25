/// @description Insert description here
// You can write your code in this editor
	global.upgrades = {
		bullet_damage : 0,
		bullet_frag : 0,
		bullet_frequence : 0,
		bullet_stability : 0,
		player_speed : 0,
		player_jump : 0.0,
		player_health : 0,
		bullet_size : 0,
		frag_damage : obj_staff.staff_damage / 2,
		bullet_speed : 1
	}


obj_player.player_life += global.upgrades.player_health;
obj_player.totallife += global.upgrades.player_health;

obj_player.player_life = clamp(obj_player.player_life, 0, obj_player.totallife);