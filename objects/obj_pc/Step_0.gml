// get inputs
if combat = false {
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
}

//player movement
//get direction
var _hor = right - left;
var _ver = down - up;
movedir = point_direction(0, 0, _hor, _ver);

//get x and y speeds 
var _spd = 0;
var _inputsize = point_distance(0, 0, _hor, _ver);
_inputsize = clamp(_inputsize, 0, 1);
_spd = (movespd * _inputsize);



if (_hor != 0 or _ver != 0)
	{sprite_index = spr_pc_ow_walk}
	else
	{sprite_index = spr_pc_ow_idle}

xspd = lengthdir_x(_spd, movedir);
yspd = lengthdir_y(_spd, movedir);


//collision
move_and_collide(xspd * 4, yspd * 4, [tilemap, shore, obj_enemy_parent]);