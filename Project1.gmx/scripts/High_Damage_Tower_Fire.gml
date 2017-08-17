//Decrement fire_time
if(fire_time > 0){
    fire_time--;
}
if(target_set)
{
    //Check if target is still in range
    if(distance_to_object(target) < Range)
    {
        if (fire_time == 0)
        {
            fire_time = Fire_Rate;
            //Code to fire a bullet
            bullet_id = instance_create(x, y, High_Damage_Bullet);
            bullet_id.direction = point_direction(x, y, target.x, target.y);
            bullet_id.speed = bullet_speed;
        }
    }
}
