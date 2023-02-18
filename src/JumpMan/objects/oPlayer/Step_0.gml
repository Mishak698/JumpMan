var hmove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
if(!climbing)
    var hvel  = hmove * moving_speed;
else
    var hvel  = hmove * climbing_speed;
repeat(abs(hvel))
{
    if(place_free(x + sign(hvel), y))
        x += sign(hvel);
    else break;
}
if(!place_free(x, y))
{
    x -= sign(hvel);
}
if(!climbing)
{
    sprite_index = sPlayer;
    if(hmove <> 0)
        image_xscale = hmove;
    else image_index = 0;
    
    image_speed = 0.3*abs(hmove);
    
    repeat(abs(vertical_speed))
    {
        if(place_free(x, y + sign(vertical_speed)))
            y += sign(vertical_speed);
        else
        {
            vertical_speed = 0;
            break;
        }
    }
    vertical_speed += gravity_force;
    
    if(keyboard_check(vk_space) and !place_free(x, y + 1))
        vertical_speed = -jumping_speed;
        
    if(place_meeting(x, y, oLadders) and keyboard_check_pressed(ord("W")))
    {
        climbing = true;
    }
}
else
{
    sprite_index = sPlayerClimbing;
    var vmove = keyboard_check(ord("S")) - keyboard_check(ord("W"));
    var vvel = vmove * climbing_speed;
    image_speed = 0.3*abs(vmove);
    repeat(abs(vvel))
    {
        if(place_free(x, y + sign(vvel)))
            y += sign(vvel);
        else break;
    }
    if(!place_meeting(x, y, oLadders))
        climbing = false;
}

