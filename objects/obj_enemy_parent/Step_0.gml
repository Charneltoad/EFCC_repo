if (instance_exists(obj_dialogue)) exit;

if (alarm[1] >=0)
{
target_x = x + kb_x;
target_y = y + kb_y;
}

var _hor = clamp(target_x - x, -move_speed, +move_speed);
var _ver = clamp(target_y - y, -move_speed, +move_speed);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, tilemap2, obj_enemy_parent]);

if (hp <= 0)
{
	instance_destroy();
	
	obj_pc.add_xp(xp_value);
}