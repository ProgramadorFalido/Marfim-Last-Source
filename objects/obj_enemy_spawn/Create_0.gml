/// @description Insert description here
// You can write your code in this editor


wave = 1;

enemys = 0;

global.upgrading = false;

enemy_limit = 0;


wave_limit = 3;

spawn_time = 0;

enemies = 0;

each5 = 0;
each10 = 0;

spawn_timer = 5;

spawn_location_x = x + random_range(-500, 500)
spawn_location_y = 0;

spawning = 0;


//teste
/// Create Event - obj_round_controller

// Variáveis de controle
roundtime = 1;
enemies_to_spawn_normal = 3;
enemies_to_spawn_forte = 0
enemies_spawned = 0;
wave_passed = 0
// Adicione aqui suas configurações iniciais, se necessário
// ...

// Inicializa a primeira onda de inimigos normais
//Função - spawn_enemies(obj_type, num)

/// Argumentos:
// obj_type: Tipo de objeto inimigo a ser criado
// num: Número de inimigos a serem criados
function spawn_enemies(obj_type, num){
		var i;
		for (i = 0; i < num; i++) {
		    var enemy = instance_create_layer(x + random_range(-500, 500), y + random_range(-100, -70), "enemys" , obj_type);
		}
		show_debug_message(num)
}
spawn_enemies(obj_enemy_1, enemies_to_spawn_normal);

enemies_spawned = instance_number(obj_enemy_1);