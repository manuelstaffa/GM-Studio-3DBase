var width = sprite_get_width(sprite_index);
var length = sprite_get_height(sprite_index);

if(!place_meeting_ext(x+xVel+(width/2*sign(xVel)), y, z, par_3dObject))
{
    x += xVel;
}else{
    while(!place_meeting_ext(x+sign(xVel)+(width/2*sign(xVel)), y, z, par_3dObject))
    {
        x += sign(xVel);    
    }
    xVel = 0;
}

if(!place_meeting_ext(x, y+yVel+(length/2*sign(yVel)), z, par_3dObject))
{
    y += yVel;
}else{
    while(!place_meeting_ext(x, y+sign(yVel)+(length/2*sign(yVel)), z, par_3dObject))
    {
        y += sign(yVel);    
    }
    yVel = 0;
}

if(!place_meeting_ext(x, y, z+zVel, par_3dObject))
{
    z += zVel;
}else{
    while(!place_meeting_ext(x, y, z+sign(zVel), par_3dObject))
    {
        z += sign(zVel);    
    }
    zVel = 0;
}
