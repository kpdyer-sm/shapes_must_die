
if(global.enemy_queue[index] == 1) {
    //generate small enemy
    instance_create(enemy_gate.x, enemy_gate.y, small_enemy);

    //decrement difficulty by cost (5)
    enemy_resources -= 5;
    global.enemy_queue[index] = 0;
    index++;
} else if (global.enemy_queue[index] == 2) {
    //generate standard enemy
    instance_create(enemy_gate.x, enemy_gate.y, standard_enemy);

    //decrement difficulty by cost (10)
    enemy_resources -= 10;
    global.enemy_queue[index] = 0;
    index++;
} else if (global.enemy_queue[index] == 3) {
    //generate large enemy
    instance_create(enemy_gate.x, enemy_gate.y, large_enemy);

    //decrement difficulty by cost (15)
    enemy_resources -= 15;
    global.enemy_queue[index] = 0;
    index++;
} else {
    index = 0;
}



