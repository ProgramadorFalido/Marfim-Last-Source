/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_staff)){
	global.upgrades_images = [

	{  //catalyst commun 0
		img : spr_dmgupgrade,
		title: "Catalyst",
		text : "commun card, increase +2 of your total damage",
		up : global.upgrades.bullet_damage + 2,
		rarity : 0,
	},
	{  //catalyst uncommun 1
		img : spr_dmgupgrade,
		title: "Catalyst",
		text : "uncommun card, increase +4 of your total damage", 
		up : global.upgrades.bullet_damage + 4,
		rarity : 1,
	},
	{ //2 Resonance commun
		img : spr_atkspdupgrade,
		title: "Resonace",
		text : "commun card, increase 15% of your total attack speed (affect ''The Feedbacker staff'' )",
		up : global.upgrades.bullet_frequence + 0.12,
		rarity : 0,
	},
	{ //3 Resonance uncommun
		img : spr_atkspdupgrade,
		title: "Resonace",
		text : "uncommun card, increase 30% of your total attack speed (affect ''The Feedbacker staff'' )",
		up : global.upgrades.bullet_frequence + 0.24,
		rarity : 1,
	},
	{// 4 Charge
		img : spr_charupgrade,
		title: "Charge",
		text : "uncommun card, increase 20% of your bullet size (affect ''The Feedbacker staff slash size'' )",
		up : 0.2,
		rarity : 1,
	},
	{ //5 Stability Commun
		img : spr_stabupgrade,
		title: "Stability",
		text : "uncommun card, increase 20% of your bullet size (affect ''The Feedbacker staff slash size'' )",
		up : global.upgrades.bullet_stability + 0.2,
		rarity : 1,
	},
	{ //6 Impulse
		img : spr_jumpupgrade,
		title: "Impulse",
		text : "commun card, increase 30% of your jump height",
		up : global.upgrades.player_jump + 0.3,
		rarity : 0,
	},
	{ //7 Growth
		img : spr_lifeupgrade,
		title: "Growth",
		text : "commun card, increase +10 of your total health",
		up : global.upgrades.player_health + 10,
		rarity : 0,
	},
	{ //8 Frag
		img : spr_fragupgrade,
		title: "Fragmentation",
		text : "uncommun card, increase +10 of your total health",
		up : global.upgrades.bullet_frag + 2,
		rarity : 1,
	},
	]
}
obj_player.player_life = clamp(obj_player.player_life, 0, obj_player.totallife);