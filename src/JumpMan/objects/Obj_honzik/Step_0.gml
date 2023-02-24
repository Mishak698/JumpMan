/// @description Insert description here
// You can write your code in this editor
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var jump = keyboard_check(vk_space );

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
