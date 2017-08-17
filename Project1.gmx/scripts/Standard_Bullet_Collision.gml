var temp_damage = damage;
with(other)
{
    enemy_health -= temp_damage;
    if(enemy_health <= 0)
    {
        instance_destroy();
    }
}

instance_destroy();
