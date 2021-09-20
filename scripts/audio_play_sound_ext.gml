/// audio_play_sound_ext(soundid, priority, loop);

soundid = argument0;
priority = argument1;
loop = argument2;

if(instance_exists(obj_control))
{
    if(obj_control.playSound)
    {
        audio_play_sound(soundid, priority, loop);
    }
}
