/// @description Insert description here
// You can write your code in this editor
// Carregue o JSON
var _json_data = global.upgrades_images;


upgradechoosen = irandom_range(0,array_length(_json_data) - 1);
upgrade = _json_data[upgradechoosen];
img = upgrade.img;
title = upgrade.title; 
text = upgrade.text;
upgrade_given = upgrade.up;
rarity = upgrade.rarity;




/*switch(upgradechoosen){
	case 0:{
		 upgrade = _json_data[upgradechoosen];
		 img = upgrade.img;
		 title = upgrade.title;
		 text = upgrade.text;
		 upgrade_given = upgrade.up;
	break;	
	}
	case 1:{
		 upgrade = _json_data[upgradechoosen];
		 img = upgrade.img;
		 title = upgrade.title;
		 text = upgrade.text;
		 upgrade_given = upgrade.up;
	break;	
	}
	case 2:{
		 upgrade = _json_data[upgradechoosen];
		 img = upgrade.img;
		 title = upgrade.title;
		 text = upgrade.text;
		 upgrade_given = upgrade.up;
	break;	
	}
	*/	
		







