/// scr_genrateRandom(minAmount, MaxAmount, object, distance);

var minAmount = argument0;
var maxAmount = argument1;
var object = argument2;
var distance = argument3;

var amount = random_range(minAmount, maxAmount);

for(i = 0; i < amount; i++)
{
    instance_create(random_range(distance, room_width-distance), random_range(distance, room_height-distance), object);
}

