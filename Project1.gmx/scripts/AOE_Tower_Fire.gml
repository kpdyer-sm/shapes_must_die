var i = -1;
if(placed)
{
    //Code to check if it can fire or not
    if(fire_time%Fire_Rate == 0)
    {
        //Play AOE sound
        audio_play_sound(sound_aoe_shot, 10, false);
        effect_create_above(ef_flare,x,y,2,c_red);
        //Code for firing
        for(i = 0; i < instance_number(enemy_super); i++)
        {
            target = instance_find(enemy_super, i);
            //Object not found at that index
            if(target == noone)
            {
                continue;
            }
            //Object found
            else
            {
                //find distance
                if(distance_to_object(target) < Range)
                {
                    var temp_damage = damage;
                    with(target)
                    {
                        enemy_health -= temp_damage;
                        var name = object_get_name(object_index);
                        if(name == "standard_enemy")
                        {
                            sprite_index = sprite_standard_enemy_damaged;
                        }
                        if(name == "small_enemy")
                        {
                            sprite_index = sprite_small_enemy_damaged;
                        }
                        if(name == "large_enemy")
                        {
                            sprite_index = sprite_large_enemy_damaged;
                        }
                        alarm[0] = 5;
                        if(enemy_health <= 0)
                        {
                            instance_destroy();
                            i--;
                        }
                    }
                }
            }
        }
    }
    //Decrement fire_time
    fire_time--;
    //Wrap around back to start for fire_time
    if(fire_time == 0)
    {
        fire_time = Fire_Rate;
    }
}
