///scr_turnTowardsPoint(x1, y1, x2, y2, speed)

x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
spd = argument4;

pointdir = point_direction(x1, y1, x2, y2);
direction += sin(degtorad(pointdir-direction))*spd;
