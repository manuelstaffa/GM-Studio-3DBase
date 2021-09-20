///scr_tileBitmask(object)   
    
object = argument0;
value = 0; 

if(instance_place(x, y-1024, object))
{
    value += 1;
}

if(instance_place(x-1024, y, object))
{
    value += 2;
} 

if(instance_place(x+1024, y, object))
{
    value += 4;
} 

if(instance_place(x, y+1024, object))
{
    value += 8;
}

image_index = value;
