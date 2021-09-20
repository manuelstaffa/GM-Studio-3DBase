mouseLeft = mouse_check_button_pressed(mb_left);
mouseRight = mouse_check_button_pressed(mb_right);
mouseLeftHold = mouse_check_button(mb_left);
mouseRightHold = mouse_check_button(mb_right);

wKeyHold = keyboard_check(ord("W"));
sKeyHold = keyboard_check(ord("S"));
dKeyHold = keyboard_check(ord("D"));
aKeyHold = keyboard_check(ord("A"));

xKey = keyboard_check_pressed(ord("X"));

spaceKeyHold = keyboard_check(vk_space);
controlKeyHold = keyboard_check(vk_control);
shiftKeyHold = keyboard_check(vk_shift);
tabKeyHold = keyboard_check(vk_tab);

spaceKey = keyboard_check_pressed(vk_space);
altKey = keyboard_check_pressed(vk_alt);
escapeKey = keyboard_check_pressed(vk_escape); 
enterKey = keyboard_check_pressed(vk_enter);
