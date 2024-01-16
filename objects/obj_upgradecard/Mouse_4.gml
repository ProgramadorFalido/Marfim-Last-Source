/// @description Insert description here
// You can write your code in this editor

switch(upgradechoosen){
	case 0:{
		 global.upgrades.bullet_damage = upgrade_given;
	break;	
	}
	case 1:{
		 global.upgrades.bullet_frequence = upgrade_given;
	break;	
	}
		
}




global.upgrading = false;
instance_deactivate_object(obj_upgrader);
instance_destroy(obj_upgradecard);
