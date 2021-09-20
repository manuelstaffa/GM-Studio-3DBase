///turn_direction(targetDirection, turnSpeed)

var targetDirection = argument0;
var turnSpeed = argument1;

turretAt += sin(degtorad(targetDirection-turretAt))*turnSpeed;

if(turretAt > 359)
{   
    turretAt = 0;
}
    
if(turretAt < 0)
{
    turretAt = 359; 
}
