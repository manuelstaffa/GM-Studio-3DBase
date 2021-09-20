/// scr_genrateCluster(minGroupAmount, maxGroupAmount, minAmount, MaxAmount, object, distance);

var minGroupAmount = argument0;
var maxGroupAmount = argument1;
var minAmount = argument2;
var maxAmount = argument3;
var object = argument4;
var distance = argument5;

var groupAmount = random_range(minGroupAmount, maxGroupAmount);
var amount = random_range(minAmount, maxAmount);

for(i = 0; i < groupAmount; i++)
{
    groupOrigin = instance_create(random_range(distance, room_width-distance), random_range(distance, room_height-distance), object);
    for(j = 0; j < amount; j++)
    {
        if(random(10) < 8 && instance_exists(groupOrigin))
        {
            xs = random_range(-distance, distance);
            ys = random_range(-distance, distance);
            instance_create(groupOrigin.x+xs, groupOrigin.y+ys, object);
        }
    }
}

