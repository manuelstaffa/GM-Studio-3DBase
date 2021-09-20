/// draw_button_ui(x, y, text, border, scale);

var xx = argument0;
var yy = argument1;
var text = argument2;
var border = argument3;
var scale = argument4;
var increase = 1.1;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
var textScale = window_get_width()/1920;

if(mouseX > xx*textScale-((string_width(text)*textScale*scale)/2+border) 
    && mouseX < xx*textScale+((string_width(text)*textScale*scale)/2+border)
    && mouseY > yy*textScale-((string_height(text)*textScale*scale)/2+border)
    && mouseY < yy*textScale+((string_height(text)*textScale*scale)/2+border))
{
    draw_text_ui(xx, yy, text, scale*increase, true);
    if(mouse_check_button_pressed(mb_left) && obj_control.clickDelay <= 0)
    {
        obj_control.clickDelay = obj_control.clickDELAY;
        return true;
    }
}else{
    draw_text_ui(xx, yy, text, scale, false);
}
