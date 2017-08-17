var temp_damage = damage;
var temp_slow = slow;
with(other)
{
    enemy_health -= temp_damage;
    path_speed = path_speed * temp_slow;
    if(enemy_health <= 0)
    {
        instance_destroy();
    }
}

instance_destroy();
