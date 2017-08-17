var temp_damage = damage;
if(other.enemy_health >= damage){
    other.enemy_health -= temp_damage;
    instance_destroy();
}
with(other)
{
    enemy_health -= temp_damage;
    if(enemy_health <= 0)
    {
        instance_destroy();
    }

}

