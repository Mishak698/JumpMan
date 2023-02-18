var xi = room_width - 62;
var yi = 25;
var mw = 12;
var lw = sprite_get_width(sPlayerHead);

var xx;
for(var i = 0; i < livesx; i++)
{
    xx = xi - lw*(1 + i) - mw*i;
    draw_sprite(sPlayerHead, 1, xx, yi);
}
for(var i = 0; i < lives; i++)
{
    xx = xi - lw*(1 + i) - mw*i;
    draw_sprite(sPlayerHead, 0, xx, yi);
}

if(lives <= 0)
{
    if(!alarm[1])
        alarm[1] = 1;
}

