/// draw_rectangle_ui(center, border, text, height, color, alpha)

center = argument0;
border = argument1
text = argument2;
height = argument3;
color = argument4;
alpha = argument5;

var uiScale = window_get_width()/1920;
var width = string_width(text)/2;

if(height == 0)
{
    draw_set_alpha(alpha);
    draw_set_colour(color);
    draw_rectangle((center-width-border)*uiScale, 0, (center+width+border)*uiScale, window_get_height(), false);
    draw_set_alpha(1);
    draw_set_colour(c_white);
}else{
    draw_set_alpha(alpha);
    draw_set_colour(color);
    draw_rectangle((center-width-border)*uiScale, (window_get_height()/2-height*uiScale), (center+width+border)*uiScale, (window_get_height()/2+height*uiScale), false);
    draw_set_alpha(1);
    draw_set_colour(c_white);
}
