if (instance_exists(obj_dialogue)) exit;

var _hor = clamp(target_x - x, -move_speed, +move_speed);
var _ver = clamp(target_y - y, -move_speed, +move_speed);

movedir = point_direction(0, 0, _hor, _ver);
var _spd = 0;

_spd = move_speed;

xspd = lengthdir_x(_spd, movedir);
yspd = lengthdir_y(_spd, movedir);

move_and_collide(_hor, _ver, [tilemap, tilemap2, obj_enemy_parent]);

if (hp <= 0)
{
	instance_destroy();
	
	obj_pc.add_xp(xp_value);
}