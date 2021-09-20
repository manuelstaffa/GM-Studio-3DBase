/// draw_image_ui(x, y, sprite, border, scale);

var xx = argument0;
var yy = argument1;
var sprite = argument2;
var border = argument3;
var scale = argument4;
var increase = 1.1;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
var imageScale = window_get_width()/1920;

if(mouseX > xx*imageScale-((sprite_get_width(sprite)*imageScale*scale)/2+border) 
    && mouseX < xx*imageScale+((sprite_get_width(sprite)*imageScale*scale)/2+border)
    && mouseY > yy*imageScale-((sprite_get_height(sprite)*imageScale*scale)/2+border)
    && mouseY < yy*imageScale+((sprite_get_height(sprite)*imageScale*scale)/2+border))
{
    draw_sprite_ext(sprite, 1, xx*imageScale, yy*imageScale, imageScale*scale*increase, imageScale*scale*increase, 0, -1, 1);
    if(mouse_check_button_pressed(mb_left) && obj_control.clickDelay <= 0)
    {
        obj_control.clickDelay = obj_control.clickDELAY;
        return true;
    }
}else{
    draw_sprite_ext(sprite, 0, xx*imageScale, yy*imageScale, imageScale*scale, imageScale*scale, 0, -1, 1);
}
