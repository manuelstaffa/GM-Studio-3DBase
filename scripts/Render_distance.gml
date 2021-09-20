/// Render distance

/*if(instance_exists(obj_player))
{
    var distance = point_distance(x, y, obj_player.x, obj_player.y);    
}else{
    var distance = point_distance(x, y, room_width/2, room_height/2);
}

if(distance <= 4000)
    then tree = model;
        
if(distance > 4000 && distance <= 8000)
    then tree = modelLOD;
    
if(distance > 8000 && distance <= 12000)
    then tree = modelLOD2;
    
if(distance > 12000)
    then tree = modelLOD3;
