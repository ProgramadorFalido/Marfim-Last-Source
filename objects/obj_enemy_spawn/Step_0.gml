/// Step Event - obj_round_controller

if (!wave_passed) {
    enemies_spawned = instance_number(obj_enemy_1);

    // Verifica se todos os inimigos foram derrotados
    if (enemies_spawned == 0) {
        // Incrementa o número de round
        roundtime += 1;
       

        // A cada 5 rounds, adiciona inimigos normais e aumenta o número de inimigos fortes permanentemente
        if (roundtime % 5 == 0) {
            enemies_to_spawn_normal = 3 + (roundtime/2);
            enemy_limit ++;
        }else{
			 enemies_to_spawn_normal = 3 + (roundtime/2);
		}
		
		if(enemy_limit = 1){
				enemies_to_spawn_forte = enemies_to_spawn_normal/2;	
		}
        // Adiciona inimigos normais e inimigos fortes
        if (!global.upgrading) {
            spawn_enemies(obj_enemy_1, enemies_to_spawn_normal);
            spawn_enemies(obj_enemy_2, enemies_to_spawn_forte);
        }
    }
}

if (!wave_passed) {
    if (!enemies_spawned) {
        spawn_time = 0;
        if (!global.upgrading) {
            global.upgrading = true;
            global.in_upgrade = true;
            instance_activate_object(obj_upgrader);
            obj_upgrader.visible = true;
            show_debug_message("wave passed");
        }
        wave_passed = 1;
    }
}

show_debug_message(global.upgrading);
show_debug_message(wave_passed);
/*
enemies_spawned = instance_number(obj_enemy_1);


// Verifica se todos os inimigos foram derrotados
if(!wave_passed){

		if (enemies_spawned == 0) {
		    // Incrementa o número de round
		    roundtime += 1;
			enemies_to_spawn_normal = 3 + (roundtime - 1) * 2;
		    // A cada 5 rounds, adiciona inimigos normais e aumenta o número de inimigos fortes permanentemente
		    if (roundtime % 5 == 0) {
		        enemies_to_spawn_normal = 3 + (roundtime - 1) * 2;
		        enemies_to_spawn_forte = enemies_to_spawn_normal/2;
		    }

		    // Adiciona inimigos normais e inimigos fortes
				spawn_enemies(obj_enemy_1, enemies_to_spawn_normal);
				spawn_enemies(obj_enemy_2, enemies_to_spawn_forte);
		}
	spawn_time ++;
}
if (!wave_passed) {
	if(!enemies_spawned)
	{
		spawn_time = 0;
		if(!global.upgrading){
			global.upgrading = true;
			global.in_upgrade = true;
			instance_activate_object(obj_upgrader);
			obj_upgrader.visible = true;
			show_debug_message("wave passed");
		}
		wave_passed = 1;
	}
}
show_debug_message(global.upgrading);
show_debug_message(wave_passed);

// Verifica se todos os inimigos foram derrotados antes de iniciar a próxima onda


/*
spawn_location_x = x + random_range(-500, 500)

/// Step Event - obj_round_controller

// Verifica se todos os inimigos foram derrotados
if (enemies_spawned == 0) {
    // Incrementa o número de round
    roundtime += 1;

    // A cada 5 rounds, adiciona inimigos mais fortes
    if (roundtime % 5 == 0) {
        // Adiciona inimigos normais e inimigos mais fortes
        enemies_to_spawn = 3 + roundtime * 2;
        spawn_enemies(obj_enemy_1, 3);
        spawn_enemies(obj_enemy_2, enemies_to_spawn - 3);
    } else {
        // Apenas adiciona inimigos normais
        enemies_to_spawn = 3 + (roundtime - 1) * 2;
        spawn_enemies(obj_enemy_1, enemies_to_spawn);
    }
}

// Verifica se todos os inimigos foram derrotados antes de iniciar a próxima onda
if (enemies_spawned == 0) {
    // Realiza a lógica de fim de round aqui, se necessário
    // ...
	// Incrementa o número de round
    roundtime += 1;

    // A cada 5 rounds, adiciona inimigos normais e inimigos mais fortes
    if (roundtime % 5 == 0) {
        // Adiciona inimigos normais e inimigos mais fortes
        enemies_to_spawn = 3 + roundtime * 2;
        spawn_enemies(obj_enemy_1, 3);
        spawn_enemies(obj_enemy_2, enemies_to_spawn - 3);
    } else {
        // Apenas adiciona inimigos normais
        enemies_to_spawn = 3 + (roundtime - 1) * 2;
        spawn_enemies(obj_enemy_1, enemies_to_spawn);
    }
}


/*
// Array of enemy types
enemy_types = [obj_enemy_1, obj_enemy_2];
current_enemy_type = obj_enemy_1;  // Default enemy type
enemy_limit = 5;  // Adjust as needed
wave_limit = 5;  // Adjust as needed

enemys = instance_number(current_enemy_type)
enemys = instance_number(obj_enemy_1)
if(!global.upgrading){
	if(!spawning){

		spawn_time ++;
		if(spawn_time >= spawn_timer){
			spawning = 1;	
		}
	}
	else if(enemy_limit != 0){
		enemy_limit --;
		spawn_time = 0;
		var _enemy = instance_create_layer(spawn_location_x, y, "enemys", current_enemy_type);
		spawning = 0;
	}
}

if (enemy_limit == 0) {
    if (!instance_number(current_enemy_type)) {
        global.upgrading = true;
        global.in_upgrade = true;
        instance_activate_object(obj_upgrader);
        obj_upgrader.visible = true;
        wave++;
        each5++;

        // Switch to a new enemy type every 5 waves
        if (each5 == 5) {
            // Randomly select a new enemy type from the array
            current_enemy_type = enemy_types[| random(array_length_1d(enemy_types) - 1)];

            // Reset the wave counter
            each5 = 0;
        }
        enemy_limit = wave_limit + wave;
    }
}

/*
spawn_location_x = x + random_range(-500, 500)


enemys = instance_number(obj_enemy_1)
if(!global.upgrading){
	if(!spawning){

		spawn_time ++;
		if(spawn_time >= spawn_timer){
			spawning = 1;	
		}
	}
	else if(enemy_limit != 0){
		enemy_limit --;
		spawn_time = 0;
		var _enemy = instance_create_layer(spawn_location_x, y, "enemys", obj_enemy_1);
		spawning = 0;
	}
}

if(enemy_limit  = 0){
	if(!instance_number(obj_enemy_1))
		{
			global.upgrading = true;
			global.in_upgrade = true;
			instance_activate_object(obj_upgrader);
			obj_upgrader.visible = true;
			wave ++;
			each5 ++;
			if(each5 = 5){
				enemies +=2;	
			}
			enemy_limit = wave_limit + wave;
		}
}

