/// @description Insert description here
// You can write your code in this editor
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var jump = keyboard_check(vk_space );
var esc = keyboard_check(vk_escape);


if (place_meeting(x, y+1, obj_solid))
{
	vspd = 0;
	
	if (jump)
	{
		vspd = -jspd;
	}
	
}

else
{
	if (vspd < 10) 
	{
		vspd += grav;
	}
}

if (right) 
{
	hspd = spd;	
}


if (left)
{
	hspd = -spd;
}

if ((!right && !left) || (right && left)) 
{
	hspd = 0;
}

if (place_meeting(x+hspd, y, obj_solid))
{
	while (!place_meeting(x+sign(hspd), y, obj_solid)) 
	{
		x += sign(hspd);
	}
	hspd = 0;
}

x+= hspd;


if (place_meeting(x, y+vspd, obj_solid))
{
	while (!place_meeting(x, y+sign(vspd), obj_solid)) 
	{
		y+= sign(vspd);
	}
	vspd = 0;
}

y+= vspd;


if (right and jump)
{
	sprite_index = Spr_honzik_meziskokPR
}
else if (left and jump)
{
	sprite_index = Spr_honzik_meziskok
}
else if (jump)
{
	sprite_index = Spr_honzik_meziskok
}
else if (right)
{
	image_xscale = right
	sprite_index = An_honzik_chodiPR
}
else if (left)
{
	image_xscale = left
	sprite_index = An_honzik_chodi
	
}

else 
{
	sprite_index = An_honzik_stojiPR
}


if esc
{
	room_goto(r_menu)
	other.x = 390;
	other.y = -185;
	
}

