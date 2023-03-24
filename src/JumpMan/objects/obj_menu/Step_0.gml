/// @description Insert description here

//input
var _up = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);


var _move = _down - _up;
if _move != 0
{
	index += _move;
	
	var _size = array_length(menu[sub_menu])
	if index < 0 index = _size = - 1;		//start == loop menu end
	else if index >= _size index = 0;	//end == loop menu start

}

if _select 
{
	switch(sub_menu){
		case 0:
			switch(index){
	
				//start
				case 0:
					room_goto(r_grass_level_1);
					Obj_honzik.x = 168;
					Obj_honzik.y = 531;
					
				break;
				//options
				case 1:
					sub_menu = 1;
					index = 0;
				break;
				//exit
				case 2:
					game_end();
				break;
			}
		break;
		case 1:
			switch(index){
	
				//Sound
				case 0:
					
				break;
				//Controls
				case 1:
		
				break;
				//Back
				case 2:
					sub_menu = 0;
					index = 1;
				break;
			}
		break;
	}
}