/// @description Insert description here
// You can write your code in this editor

switch(upgradechoosen){
	case 0:{
		 global.upgrades.bullet_damage = upgrade_given;
	break;	
	}
	case 1:{
		 global.upgrades.bullet_damage = upgrade_given;
	break;	
	}
	case 2:{
		 global.upgrades.bullet_frequence = upgrade_given;
		/* if(obj_staff.staff_type = "red"){
			var percentage = obj_staff.image_speed;
			var shoot_timer = 1;
			shoot_timer = shoot_timer + (percentage * (upgrade_given - (upgrade_given/2 - (2 * upgrade_given))));
			obj_staff.image_speed = shoot_timer;	 
		 }*/
	break;	
	}
	case 3:{
		 global.upgrades.bullet_frequence = upgrade_given;
		/* if(obj_staff.staff_type = "red"){
			var percentage = obj_staff.image_speed;
			var shoot_timer = 1;
			shoot_timer = shoot_timer + (percentage * (upgrade_given - (global.upgrades.bullet_frequence/2)));
			obj_staff.image_speed = shoot_timer;	 
		 }*/
	break;	
	}
	case 4:{
		global.upgrades.bullet_size += upgrade_given;
	break;	
	}
	case 5:{
		global.upgrades.bullet_stability = upgrade_given;
	break;	
	}
	case 6:{
		global.upgrades.player_jump = upgrade_given;
		 
			 
	break;	
	}
	case 7:{
		global.upgrades.player_health = upgrade_given;
		obj_player.player_life  += 10;

	break;	
	}
	case 8:{
		 global.upgrades.bullet_frag = upgrade_given;
	break;	
	}	
}



obj_enemy_spawn.wave_passed = 0;
global.upgrading = false;
instance_deactivate_object(obj_upgrader);
instance_destroy(obj_upgradecard);
