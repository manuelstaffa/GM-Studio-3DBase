/// draw_text_ui(x, y, text, scale, reversed);

ui_settings();

var xx = argument0;
var yy = argument1;
var text = argument2;
var scale = argument3;
var reversed = argument4;

offsetX = 5;
offsetY = -2;

var textScale = window_get_width()/1920;
//draw_set_font(fnt_main);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(!reversed)
{
    draw_set_color(color1);
    draw_text_transformed(xx*textScale+offsetX*textScale, yy*textScale+offsetY*textScale, text, textScale*scale, textScale*scale, 0);
    
    draw_set_color(color2);
    draw_text_transformed(xx*textScale, yy*textScale, text, textScale*scale, textScale*scale, 0);
}else{
    draw_set_color(color2);
    draw_text_transformed(xx*textScale+offsetX*textScale, yy*textScale+offsetY*textScale, text, textScale*scale, textScale*scale, 0);
    
    draw_set_color(color1);
    draw_text_transformed(xx*textScale, yy*textScale, text, textScale*scale, textScale*scale, 0);
}

draw_set_color(c_white);
