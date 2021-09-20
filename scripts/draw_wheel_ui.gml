/// draw_wheel_ui(x, y, scale);

var xx = argument0;
var yy = argument1;
//var levelAmount = argument2;
var scale = argument2;

var arrayLength = array_height_2d(select);

var previous = currentSelected;
var next = currentSelected+1;

// Previous & next
if(previous < 1)
{
    previous = arrayLength-1;
}

if(next > arrayLength-1)
{
    next = 0;
}

// Limit range
if(currentSelected < 1)
{
    currentSelect = arrayLength-1;
}

if(currentSelected > arrayLength-1)
{
    currentSelect = 0;
}

// Draw selection
if(draw_image_ui(xx, yy, select[currentSelected, 0], 0, scale))
{
    room_goto(select[currentSelected, 1]);
    if(freecam)
    {
        cameraMode = 3;
    }else{
        cameraMode = 2;
    }
}

draw_set_alpha(.8);
if(draw_image_ui(xx-sprite_get_width(select[previous, 0]), yy, select[previous, 0], 0, scale*0.9))
{
    currentSelected--;
}
if(draw_image_ui(xx+sprite_get_width(select[next, 0]), yy, select[next, 0], 0, scale*0.9))
{
    currentSelected++;
}
draw_set_alpha(1);
