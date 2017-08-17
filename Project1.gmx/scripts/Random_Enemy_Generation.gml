if(wave_active = true) {
    var num_enemies = irandom(min(7 + global.wave_number, 100));
    for(var i=0; i<num_enemies; i++){
        global.enemy_queue[i] = irandom(2) + 1;
    }
    
    
}

if(enemy_resources <= 0) {
    //pause between waves
    wave_active = false;
    alarm[4] = 450;
    alarm[5] = 300;
    
    //increase enemy resources and difficulty modifier
    game_difficulty += 25;
    enemy_resources = game_difficulty;
    //.001x^3 + .5x + 1
    global.difficulty_modifier = floor(1 + .5 * global.wave_number + .001 * (global.wave_number * global.wave_number * global.wave_number));
    global.wave_number += 1;
}
