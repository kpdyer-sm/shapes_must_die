if(placed)
{
    //Find target if needed
    if (!target_set) 
    {
        //Code to find nearest enemy
        var tempTarget = instance_nearest(x, y, enemy_super);
        //Check if nearest enemy is within range
        if(distance_to_object(tempTarget) < Range)
        {
            //In range             
            //set as target
            //Set target_set to true
            target = tempTarget;
            target_set = true;
        }
        //Not in range 
        else
        {
            //set target to null
            target = -1;
            target_set = false;
        }
    }
    //Check if target is still in range
    if(target_set)
    {
        if(distance_to_object(target) < Range)
        {
        }
        //Not in range anymore
        else
        {
            //set target to null
            target = -1;
            target_set = false;
        }
        
    }
}
